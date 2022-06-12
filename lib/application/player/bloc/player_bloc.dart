import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:uuid/uuid.dart';
import 'package:wakelock/wakelock.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/application/jobs/download_media/download_media_bloc.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/application/player/puzzle/bloc/puzzle_bloc.dart';
import 'package:yummy_lingo/application/player/puzzle/chunks.dart';
import 'package:yummy_lingo/application/player/utils.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/extensions.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/config.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/exercises_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/my_courses_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';
import 'package:yummy_lingo/infrastructure/storage.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/main.dart';

part 'player_bloc.freezed.dart';
part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  late ApplicationBloc application;
  DownloadMediaBloc? mediaDownloader;
  StreamSubscription<DownloadMediaState>? downloaderSubscription;
  Timer? timer;
  Random random = Random();

  bool visible = false;

  late String course;
  late String? firebaseId;
  late CurrentLesson lesson;
  late String session_id;

  late PlayerAction action;
  late double volume;
  late int speed;

  late double speedCoefficient;
  late double speed_faster, speed_normal, speed_slower;
  late AudioSettings audioSettings;

  late String audioPath;

  late List<Command> commands;
  late int position;
  late Duration total;
  late Duration remain;

  late List<ScreenData> screen;

  PlayerBloc({required this.application}) : super(const PlayerState.initial()) {
    on<_PlayerLoadEvent>(_onPlayerLoad);
    on<_PlayerMediaDownloadedEvent>(_onMediaDownloaded);
    on<_PlayerMediaFailedEvent>(_onMediaFailed);
    on<_PlayerBackwardPressedEvent>(_onBackwardPressed);
    on<_PlayerForwardPressedEvent>(_onForwardPressed);
    on<_PlayerVolumeChangedEvent>(_onVolumeChanged);
    on<_PlayerDuckEvent>(_onDuck);
    on<_PlayerUnduckEvent>(_onUnduck);
    on<_PlayerChangeSpeedPressedEvent>(_onChangeSpeedPressed);
    on<_PlayerControlButtonPressedEvent>(_onControlButtonPressed);
    on<_PlayerNextEvent>(_onNext);
    on<_PlayerAudioCompletedEvent>(_onAudioCompleted);
    on<_PlayerVisibilityChangedEvent>(_onVisibilityChanged);
    on<_PlayerPauseEvent>(_onPause);
    on<_PlayerResumeEvent>(_onResume);
    on<_PlayerStopEvent>(_onStop);
    on<_PlayerResetEvent>(_onReset);
    on<_PlayerResetIfCurrent>(_onResetIfCurrent);
  }

  @override
  void onEvent(PlayerEvent event) {
    super.onEvent(event);
    debugPrint(event.toString());
  }

  Future<void> _onPlayerLoad(
    _PlayerLoadEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerData &&
        this.course == event.course &&
        this.lesson == event.lesson &&
        (state as PlayerData).action != PlayerAction.failed) {
      return;
    }

    if (state is PlayerData) {
      add(const PlayerEvent.stop());
    }

    final db = getIt<MoorDB>();
    final storage = getIt<Storage>();

    final MyCourseEntry myCourseEntry =
        await db.myCoursesDao.getEntryByCourse(event.course);

    /// CHECK IF LESSON IS AVAILABLE

    if (myCourseEntry.course.lessons_count <= event.lesson.order) {
      application.add(ApplicationEvent.showCourseCompletedDialog(
        course: myCourseEntry.course.id,
      ));
      return;
    }

    if (!myCourseEntry.myCourse.bought &&
        myCourseEntry.course.demo <= event.lesson.order) {
      application.add(
        ApplicationEvent.showLessonLockedDialog(course: event.course),
      );
      return;
    }

    /// SET UP PLAYER

    session_id = const Uuid().v1();

    this.course = event.course;
    this.firebaseId = event.firebaseId;
    this.lesson = event.lesson;

    if (state is PlayerData) {
      emit((state as PlayerData)
          .copyWith(action: action = PlayerAction.loading));
    }

    screen = [];
    commands = [];
    position = 0;
    total = Duration.zero;
    remain = Duration.zero;
    timer?.cancel();

    audioPath = await storage.getAudioPath(this.course);
    Directory(audioPath).createSync(recursive: true);

    db.myCoursesDao.updateLastListened(course: course, firebaseId: firebaseId);

    /// INIT PLAYER

    volume = await Preferences.get.getDouble(Preferences.VOLUME, def: 0.5);
    getIt<AudioPlayer>().setVolume(volume);
    speed = await Preferences.get.getInt(Preferences.PLAYER_SPEED, def: 1);
    speed_faster = await Preferences.get.getDouble(Config.SPEED_FASTER);
    speed_normal = await Preferences.get.getDouble(Config.SPEED_NORMAL);
    speed_slower = await Preferences.get.getDouble(Config.SPEED_SLOWER);

    _updateSpeedCoefficient();

    audioSettings = AudioSettings(
      pause_after_exercise: myCourseEntry.language.pause_after_exercise.toInt(),
      listening_rate: myCourseEntry.language.listening_rate,
      practice_rate: myCourseEntry.language.practice_rate,
    );

    /// SET STATE

    final Lesson lesson =
        (await db.lessonsDao.getLesson(course, this.lesson.order))!;

    emit(PlayerState(
      course: myCourseEntry.course,
      language: myCourseEntry.language,
      level: myCourseEntry.course.level_name,
      lesson: lesson,
      part: _lessonToString(),
      session_id: session_id,
      screen: screen,
      backwardEnabled: lesson.order > 0 ||
          (this.lesson is Part && (this.lesson as Part).part > 0),
      forwardEnabled: myCourseEntry.myCourse.current_lesson > lesson.order ||
          (this.lesson is Part &&
              (myCourseEntry.myCourse.current_part >
                  (this.lesson as Part).part)),
      volume: volume,
      speed: _speedToString(),
      action: action = PlayerAction.loading,
      progress: 0,
      total: Duration.zero,
      remain: Duration.zero,
    ));

    /// PREPARE EXERCISES

    final List<ExerciseWithContent> review = await this.lesson.map(
          part: (lesson) async => await getReview(
            course: course,
            lesson_order: lesson.order,
            part: lesson.part,
            count: 2,
          ),
          review: (_) => [],
        );

    final List<ExerciseWithContent> exercises = await this.lesson.map(
          part: (lesson) async => await getExercises(
              course: course, lesson_order: lesson.order, part: lesson.part),
          review: (_) async =>
              (await getExercises(course: course, lesson_order: lesson.order))
                  .randomElements(10)
                  .toList(),
        );

    debugPrint(
        'Lesson ${lesson.order + 1}, Exercises (${review.length}, ${exercises.length})');

    commands = buildCommands(
      description: lesson.description,
      review: review,
      exercises: exercises,
      audioSettings: audioSettings,
    );

    await _updateTotalDuration(emit);
    await _updateRemainDuration(emit);

    /// LOAD MEDIA

    mediaDownloader?.add(const DownloadMediaEvent.cancel());
    downloaderSubscription?.cancel();

    final List<ExerciseContent> pendingDownloads = await storage
        .checkMediaReady(course: course, exercises: [
      ...getExerciseContents(review),
      ...getExerciseContents(exercises)
    ]);

    if (pendingDownloads.isNotEmpty) {
      mediaDownloader = DownloadMediaBloc();
      downloaderSubscription = mediaDownloader!.stream.listen((event) {
        if (event.state == JobState.completed) {
          add(PlayerEvent.mediaDownloaded(course: course, lesson: this.lesson));
        } else if (event.state == JobState.failed) {
          add(PlayerEvent.mediaFailed(course: course, lesson: this.lesson));
        }
      });

      mediaDownloader!.add(DownloadMediaEvent.downloadExercises(
        course: myCourseEntry.course,
        exercises: pendingDownloads,
      ));
    } else {
      await _play(emit);
    }
  }

  Future<void> _onMediaDownloaded(
    _PlayerMediaDownloadedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    if (course == event.course && lesson == event.lesson) {
      await _play(emit);
    }
  }

  Future<void> _onMediaFailed(
    _PlayerMediaFailedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    if (course == event.course && lesson == event.lesson) {
      emit((state as PlayerData).copyWith(
        action: action = PlayerAction.failed,
      ));
      application.add(const ApplicationEvent.showNoInternetConnectionDialog());
    }
  }

  Future<void> _onBackwardPressed(
    _PlayerBackwardPressedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    add(PlayerEvent.load(
      course: course,
      firebaseId: firebaseId,
      lesson: lesson.map(
          part: (lesson) => lesson.part == 0
              ? CurrentLesson.review(order: lesson.order - 1)
              : CurrentLesson.part(
                  order: lesson.order,
                  part: lesson.part - 1,
                ),
          review: (review) => CurrentLesson.review(order: review.order - 1)),
    ));
  }

  Future<void> _onForwardPressed(
    _PlayerForwardPressedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    //ToDo: Hitting forward button many times can lead to future lessons
    add(PlayerEvent.load(
      course: course,
      firebaseId: firebaseId,
      lesson: await lesson.map(
        part: (lesson) => lesson.part < PARTS_PER_LESSON - 1
            ? CurrentLesson.part(
                order: lesson.order,
                part: lesson.part + 1,
              )
            : CurrentLesson.part(
                order: lesson.order + 1,
                part: 0,
              ),
        review: (review) async {
          final MoorDB db = getIt<MoorDB>();
          final MyCourse myCourse = await db.myCoursesDao.getByCourse(course);
          if (review.order == myCourse.current_lesson - 1) {
            return CurrentLesson.part(
              order: myCourse.current_lesson,
              part: myCourse.current_part,
            );
          } else {
            return CurrentLesson.review(order: review.order + 1);
          }
        },
      ),
    ));
  }

  Future<void> _onVolumeChanged(
    _PlayerVolumeChangedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    volume = event.volume;
    getIt<AudioPlayer>().setVolume(volume);
    Preferences.get.setDouble(Preferences.VOLUME, volume);

    if (state is PlayerData) {
      emit((state as PlayerData).copyWith(volume: volume));
    }
  }

  Future<void> _onDuck(
    _PlayerDuckEvent event,
    Emitter<PlayerState> emit,
  ) async {
    getIt<AudioPlayer>().setVolume(volume / 2);
  }

  Future<void> _onUnduck(
    _PlayerUnduckEvent event,
    Emitter<PlayerState> emit,
  ) async {
    getIt<AudioPlayer>().setVolume(volume);
  }

  Future<void> _onAudioCompleted(
    _PlayerAudioCompletedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    if (event.session_id == session_id &&
        (state as PlayerData).action != PlayerAction.audition) {
      add(PlayerEvent.next(session_id: session_id));
    }
  }

  Future<void> _onVisibilityChanged(
    _PlayerVisibilityChangedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    visible = event.visible;
  }

  Future<void> _onResume(
    _PlayerResumeEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    if (action == PlayerAction.paused) {
      // Wakelock.enable();
      // add(PlayerEvent.next(session_id: session_id));
      await _play(emit);
    }
  }

  Future<void> _onReset(
    _PlayerResetEvent event,
    Emitter<PlayerState> emit,
  ) async {
    add(const PlayerEvent.stop());
    emit(const PlayerState.initial());
  }

  Future<void> _onResetIfCurrent(
    _PlayerResetIfCurrent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    if (course == event.course) {
      add(const PlayerEvent.reset());
    }
  }

  Future<void> _play(Emitter<PlayerState> emit) async {
    if (state is PlayerInitial) {
      return;
    }

    Wakelock.enable();

    emit((state as PlayerData).copyWith(action: action = PlayerAction.playing));

    add(PlayerEvent.next(session_id: session_id));
  }

  Future<void> _onNext(
    _PlayerNextEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    if (event.session_id != session_id) {
      return;
    }

    if (action != PlayerAction.playing &&
        action != PlayerAction.audition &&
        action != PlayerAction.interaction) {
      return;
    }

    if (position >= commands.length) {
      await _complete(emit);
      return;
    }

    await commands[position++].map(
      dialog: (command) async {
        screen.add(
            ScreenData.dialog(text: command.text, options: command.options));
        if (command.options.isEmpty && command.interaction == false) {
          add(PlayerEvent.next(session_id: session_id));
        } else {
          action = PlayerAction.interaction;
        }
      },
      puzzle: (command) async {
        action = command.audio == null
            ? PlayerAction.interaction
            : PlayerAction.audition;

        final List<Chunk> chunks = command.chunks
          ..shuffle(random)
          ..map((e) => e.reset()).toList();

        screen.add(ScreenData.puzzle(
          bloc: PuzzleBloc()..add(PuzzleEvent.load(chunks: chunks)),
          chunks: chunks,
          audio: command.audio,
        ));

        if (command.audio != null) {
          _playAudio(command.audio!);
        }
      },
      transcript: (command) async {
        screen.add(
          ScreenData.transcript(
            text: command.text,
            translation: command.translation,
          ),
        );
        add(PlayerEvent.next(session_id: session_id));
      },
      text: (command) async {
        action = PlayerAction.interaction;
        screen.add(
          ScreenData.text(
            text: command.text,
            options: const [DialogOption.next()],
          ),
        );
      },
      audio: (command) async {
        action = PlayerAction.playing;
        _playAudio(command.audio);
        // timer = Timer(Duration(milliseconds: command.duration), () {
        //   add(PlayerEvent.next(session_id: session_id));
        // });
        remain = remain - Duration(milliseconds: command.duration);
      },
      pause: (command) async {
        final int duration = (command.duration * speedCoefficient).toInt();
        timer = Timer(Duration(milliseconds: duration), () {
          add(PlayerEvent.next(session_id: session_id));
        });
        remain -= Duration(milliseconds: duration);
      },
      duration: (command) async {
        final int duration = (command.duration * speedCoefficient).toInt();
        remain -= Duration(milliseconds: duration);
        add(PlayerEvent.next(session_id: session_id));
      },
      clear: (_) async {
        _clear();
        add(PlayerEvent.next(session_id: session_id));
      },
      reviewCompleted: (_) {
        add(PlayerEvent.next(session_id: session_id));
      },
      lessonCompleted: (_) async {
        if (lesson is Part) {
          final MyCourse myCourse =
              await getIt<MoorDB>().myCoursesDao.getByCourse(course);
          if (myCourse.current_lesson > lesson.order) {
            return;
          }

          final int order = lesson.order;
          final int part = (lesson as Part).part;
          getIt<MoorDB>().myCoursesDao.updateProgress(
                id: course,
                firebaseId: firebaseId,
                currentLesson: part < PARTS_PER_LESSON - 1 ? order : order + 1,
                currentPart: part < PARTS_PER_LESSON - 1 ? part + 1 : 0,
              );
        }
        add(PlayerEvent.next(session_id: session_id));
      },
    );

    emit((state as PlayerData).copyWith(
      progress: position / commands.length,
      screen: screen,
      remain: remain.isNegative ? Duration.zero : remain,
      action: action,
    ));
  }

  Future<void> _onPause(
    _PlayerPauseEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    emit((state as PlayerData).copyWith(action: action = PlayerAction.paused));

    timer?.cancel();
    getIt<AudioPlayer>().stop();
    Wakelock.disable();
  }

  Future<void> _complete(Emitter<PlayerState> emit) async {
    Wakelock.disable();

    emit((state as PlayerData).copyWith(
      action: action = PlayerAction.completed,
      forwardEnabled: true,
    ));
  }

  Future<void> _onStop(
    _PlayerStopEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    emit((state as PlayerData).copyWith(action: action = PlayerAction.none));

    timer?.cancel();
    mediaDownloader?.add(const DownloadMediaEvent.cancel());
    downloaderSubscription?.cancel();

    getIt<AudioPlayer>().stop();

    _clear();

    Wakelock.disable();
  }

  Future<void> _repeat(Emitter<PlayerState> emit) async {
    position = 0;
    _clear();

    emit((state as PlayerData).copyWith(
      action: action = PlayerAction.playing,
      screen: screen,
      progress: 0,
    ));

    await _updateRemainDuration(emit);

    add(PlayerEvent.next(session_id: session_id));
  }

  Future<void> _onChangeSpeedPressed(
    _PlayerChangeSpeedPressedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    speed = (speed + 1) % 3;
    _updateSpeedCoefficient();
    Preferences.get.setInt(Preferences.PLAYER_SPEED, speed);

    await _updateTotalDuration(emit);
    await _updateRemainDuration(emit);

    emit((state as PlayerData).copyWith(
      speed: _speedToString(),
    ));
  }

  Future<void> _onControlButtonPressed(
    _PlayerControlButtonPressedEvent event,
    Emitter<PlayerState> emit,
  ) async {
    if (state is PlayerInitial) {
      return;
    }

    if (action == PlayerAction.completed) {
      await _repeat(emit);
    } else if (action == PlayerAction.paused) {
      await _play(emit);
    } else if (action == PlayerAction.playing) {
      add(const PlayerEvent.pause());
    } else if (action == PlayerAction.audition) {
      if (screen.isNotEmpty && screen.last is PuzzleData) {
        final PuzzleData puzzleData = screen.last as PuzzleData;
        if (puzzleData.audio != null) {
          _playAudio(puzzleData.audio!);
        }
      }
    } else if (action == PlayerAction.interaction) {
      if (screen.isNotEmpty && screen.last is PuzzleData) {
        return;
      }

      add(PlayerEvent.next(session_id: session_id));

      // DialogOption? option;
      // if (screen.isNotEmpty &&
      //     screen.last is DialogData &&
      //     (screen.last as DialogData).options.length == 1) {
      //   option = (screen.last as DialogData).options.first;
      // }
      // if (screen.isNotEmpty &&
      //     screen.last is TextData &&
      //     (screen.last as TextData).options.length == 1) {
      //   option = (screen.last as TextData).options.first;
      // }
      // if (option != null) {
      //   option.maybeMap(
      //     start: (_) => add(PlayerEvent.next(session_id: session_id)),
      //     next: (_) => add(PlayerEvent.next(session_id: session_id)),
      //     forward: (_) => add(const PlayerEvent.forwardPressed()),
      //     orElse: () {},
      //   );
      // } else {
      //   add(PlayerEvent.next(session_id: session_id));
      // }
    } else if (action == PlayerAction.failed) {
      add(PlayerEvent.load(
        course: course,
        firebaseId: firebaseId,
        lesson: lesson,
      ));
    }
  }

  Future<void> _updateTotalDuration(Emitter<PlayerState> emit) async {
    int duration = 0;
    for (Command command in commands) {
      if (command is CommandPause) {
        duration += (command.duration * speedCoefficient).toInt();
      }
      if (command is CommandAudio) {
        duration += command.duration;
      }
      if (command is CommandDuration) {
        duration += (command.duration * speedCoefficient).toInt();
      }
    }

    total = Duration(milliseconds: duration);

    emit((state as PlayerData).copyWith(
      total: total,
    ));
  }

  Future<void> _updateRemainDuration(Emitter<PlayerState> emit) async {
    int duration = 0;
    for (int i = position; i < commands.length; i++) {
      if (commands[i] is CommandPause) {
        duration +=
            ((commands[i] as CommandPause).duration * speedCoefficient).toInt();
      }
      if (commands[i] is CommandAudio) {
        duration += (commands[i] as CommandAudio).duration;
      }
      if (commands[i] is CommandDuration) {
        duration +=
            ((commands[i] as CommandDuration).duration * speedCoefficient)
                .toInt();
      }
    }

    remain = Duration(milliseconds: duration);

    emit((state as PlayerData).copyWith(
      remain: remain,
    ));
  }

  void _playAudio(String audio) {
    getIt<AudioPlayer>()
        .setFilePath(audioPath + Platform.pathSeparator + audio);
    //ToDo: fixes volume inconsistency
    getIt<AudioPlayer>().setVolume(volume);
    getIt<AudioPlayer>().play();
  }

  void _updateSpeedCoefficient() {
    switch (speed) {
      case 0:
        speedCoefficient = speed_slower;
        break;
      case 1:
        speedCoefficient = speed_normal;
        break;
      case 2:
        speedCoefficient = speed_faster;
        break;
    }
  }

  void _clear() {
    screen.whereType<PuzzleData>().map((e) => e.bloc.close());
    screen.clear();
  }

  String _speedToString() {
    switch (speed) {
      case 0:
        return t.player.speed.slower;
      case 2:
        return t.player.speed.faster;
      default:
        return t.player.speed.normal;
    }
  }

  String _lessonToString() {
    return lesson.map(
      part: (lesson) => String.fromCharCode('A'.codeUnitAt(0) + lesson.part),
      review: (_) => t.player.review,
    );
  }
}
