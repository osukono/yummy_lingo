import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/storage.dart';
import 'package:yummy_lingo/injection.dart';

part 'my_course_event.dart';
part 'my_course_state.dart';

part 'my_course_bloc.freezed.dart';

class MyCourseBloc extends Bloc<MyCourseEvent, MyCourseState> {
  final String course;

  final _db = getIt<MoorDB>();
  final _storage = getIt<Storage>();
  StreamSubscription<List<Lesson>>? _lessonsListener;

  MyCourseBloc(this.course) : super(MyCourseState.initial()) {
    on<_MyCourseStartedEvent>(_onStarted);
    on<_CheckDownloadedEvent>(_onCheckDownloaded);
    on<_DeleteMediaEvent>(_onDeleteMedia);
    on<_UpdateDownloadedEvent>(_onUpdateDownloaded);
    on<_ResetProgressEvent>(_onResetProgress);
  }

  @override
  Future<void> close() async {
    _lessonsListener?.cancel();

    return super.close();
  }

  Future<void> _onStarted(
    _MyCourseStartedEvent event,
    Emitter<MyCourseState> emit,
  ) async {
    _lessonsListener = _db.lessonsDao
        .watchAll(this.course)
        .listen((List<Lesson> lessons) async* {
      emit(state.copyWith(
        lessons: lessons,
      ));
    });
  }

  Future<void> _onCheckDownloaded(
    _CheckDownloadedEvent event,
    Emitter<MyCourseState> emit,
  ) async {
    final Course course = await _db.coursesDao.getById(this.course);
    final List<ExerciseContent> mediaForDownload =
        await _storage.checkMediaReady(course: this.course);

    emit(state.copyWith(
      updatingState: course.need_update ? JobState.pending : JobState.none,
      downloaded: mediaForDownload.isEmpty,
      lessons: await _db.lessonsDao.getAll(this.course),
    ));
  }

  Future<void> _onUpdateDownloaded(
    _UpdateDownloadedEvent event,
    Emitter<MyCourseState> emit,
  ) async {
    emit(state.copyWith(
      downloaded: event.downloaded,
    ));
  }

  Future<void> _onDeleteMedia(
    _DeleteMediaEvent event,
    Emitter<MyCourseState> emit,
  ) async {
    await _storage.deleteCourseAudio(this.course);

    emit(state.copyWith(
      downloaded: false,
    ));
  }

  Future<void> _onResetProgress(
    _ResetProgressEvent event,
    Emitter<MyCourseState> emit,
  ) async {
    getIt<MoorDB>().myCoursesDao.updateProgress(
          id: event.myCourse.id,
          firebaseId: event.myCourse.firebase_id,
          currentLesson: 0,
          currentPart: 0,
        );
  }
}
