import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/application/core/helpers.dart';
import 'package:yummy_lingo/application/core/media_info.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/domain/failures/downloading_failure.dart';
import 'package:yummy_lingo/infrastructure/audio.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/storage.dart';
import 'package:yummy_lingo/injection.dart';

part 'download_media_bloc.freezed.dart';
part 'download_media_event.dart';
part 'download_media_state.dart';

class DownloadMediaBloc extends Bloc<DownloadMediaEvent, DownloadMediaState> {
  late Course _course;

  final Dio _dio = Dio();
  final CancelToken _cancelToken = CancelToken();
  Timer? _delayTimer;

  late String _audioPath;
  final List<MediaInfo> _pending = [];
  final List<MediaInfo> _downloading = [];
  final List<MediaInfo> _completed = [];

  DownloadMediaBloc() : super(DownloadMediaState.initial()) {
    on<_DownloadCourseEvent>(_onDownloadCourseMedia);
    on<_DownloadExercisesEvent>(_onDownloadExercisesMedia);
    on<_DownloadEvent>(_onDownload);
    on<_CancelEvent>(_onCancel);
    on<_ErrorEvent>(_onError);
    on<_ProgressChangedEvent>(_onProgressChanged);
    on<_ConnectivityChangedEvent>(_onConnectivityChanged);
    on<_StorageErrorEvent>(_onStorageError);
  }

  Future<void> _onDownloadCourseMedia(
    _DownloadCourseEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    final Storage storage = getIt<Storage>();

    _course = event.course;
    _audioPath = await storage.getAudioPath(_course.id);
    Directory(_audioPath).createSync(recursive: true);

    final List<ExerciseContent> exercises =
        await storage.checkMediaReady(course: _course.id);

    add(DownloadMediaEvent.downloadExercises(
      course: event.course,
      exercises: exercises,
    ));
  }

  Future<void> _onDownloadExercisesMedia(
    _DownloadExercisesEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    final Storage storage = getIt<Storage>();

    _course = event.course;
    _audioPath = await storage.getAudioPath(_course.id);
    Directory(_audioPath).createSync(recursive: true);

    final Set<String> audio = await getExercisesAudio(event.exercises);

    await Future.forEach(audio, (String name) async {
      if (await storage.fileExists(name, _audioPath) == false) {
        _pending.add(MediaInfo(
          name: name,
          url: _course.audio_storage + name,
        ));
      }
    });

    if (_pending.isNotEmpty) {
      _delayTimer = Timer(const Duration(milliseconds: 1000), () {
        add(const DownloadMediaEvent.download());
      });
    }

    add(const DownloadMediaEvent.progressChanged());
  }

  Future<void> _onProgressChanged(
    _ProgressChangedEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    final int total = _pending.length + _completed.length + _downloading.length;
    final int completed = _completed.length;
    final double progress = total != 0 ? completed / total : 1;

    emit(state.copyWith(
      total: total,
      completed: completed,
      progress: progress,
      state: progress < 1 ? JobState.executing : JobState.completed,
      failure: none(),
    ));
  }

  Future<void> _onDownload(
    _DownloadEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    while (_downloading.length < 10 && _pending.isNotEmpty) {
      if (_cancelToken.isCancelled) {
        break;
      }

      MediaInfo task;

      try {
        task = _pending.removeAt(0);
        _downloading.add(task);
      } catch (_) {
        break;
      }

      _requestDownload(task);
    }
  }

  Future<void> _requestDownload(MediaInfo task) async {
    _dio.download(
      task.url,
      _audioPath + Platform.pathSeparator + task.name,
      cancelToken: _cancelToken,
      deleteOnError: true,
    )..then(
        (value) {
          _downloading.remove(task);
          _completed.add(task);

          if (!isClosed && !_cancelToken.isCancelled) {
            add(const DownloadMediaEvent.progressChanged());
            add(const DownloadMediaEvent.download());
          }
        },
        onError: (error, stackTrace) {
          if (!_cancelToken.isCancelled) {
            add(const DownloadMediaEvent.error());
          }

          // _downloading.remove(task);
          // _pending.add(task);

          // debugPrint('Downloading caught error');
        },
      );
  }

  Future<void> _onCancel(
    _CancelEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    _delayTimer?.cancel();
    if (!_cancelToken.isCancelled) {
      _cancelToken.cancel();
    }
    emit(state.copyWith(
      state: JobState.revoked,
    ));
  }

  Future<void> _onError(
    _ErrorEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    _cancelToken.cancel();
    emit(state.copyWith(state: JobState.failed));
  }

  Future<void> _onConnectivityChanged(
    _ConnectivityChangedEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    final ConnectivityState connectivityState =
        await checkConnectivity(connectivityResult: event.result);

    if (connectivityState == ConnectivityState.offline) {
      emit(state.copyWith(
        state: JobState.failed,
        failure: some(const DownloadingFailure.noInternet()),
      ));
    }

    if (state.connectivityState == ConnectivityState.offline &&
        connectivityState == ConnectivityState.online) {
      await _retryDownloading(emit);
    }

    emit(state.copyWith(
      connectivityState: connectivityState,
    ));
  }

  Future<void> _onStorageError(
    _StorageErrorEvent event,
    Emitter<DownloadMediaState> emit,
  ) async {
    emit(state.copyWith(
      failure: some(const DownloadingFailure.storageError()),
    ));
  }

  Future<void> _retryDownloading(
    Emitter<DownloadMediaState> emit,
  ) async {
    emit(state.copyWith(
      state: JobState.executing,
      failure: none(),
    ));

    add(const DownloadMediaEvent.download());
  }
}
