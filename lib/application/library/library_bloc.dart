import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/domain/core/job_progress.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/infrastructure/firebase/courses_repository.dart';
import 'package:yummy_lingo/infrastructure/firebase/my_courses_repository.dart';
import 'package:yummy_lingo/infrastructure/firebase/topics_repository.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/storage.dart';
import 'package:yummy_lingo/injection.dart';

part 'library_event.dart';
part 'library_state.dart';
part 'library_bloc.freezed.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  final MoorDB _db = getIt<MoorDB>();
  final Storage _storage = getIt<Storage>();

  final Map<String, JobProgress> _jobs = {};
  final Map<String, CancelToken> _tokens = {};

  LibraryBloc() : super(LibraryState.initial()) {
    on<_LoadLibraryEvent>(_onLoad);
    on<_ClearLibraryEvent>(_onClear);
    on<_AddCourseEvent>(_onAddCourse);
    on<_UpdateCourseEvent>(_onUpdateCourse);
    on<_RemoveCourseEvent>(_onRemoveCourse);
    on<_CancelJobEvent>(_onCancelJob);
  }

  @override
  void onEvent(LibraryEvent event) {
    super.onEvent(event);
    debugPrint(event.toString());
  }

  @override
  void onTransition(Transition<LibraryEvent, LibraryState> transition) {
    super.onTransition(transition);
  }

  Future<void> _onLoad(
    _LoadLibraryEvent event,
    Emitter<LibraryState> emit,
  ) async {
    await TopicsRepository.get.load();
    await CoursesRepository.get.load();

    final courses = await MyCoursesRepository.get.load();
    for (String course in courses) {
      if (!await _db.myCoursesDao.exists(course)) {
        add(LibraryEvent.addCourse(
          course: course,
          updateLastListened: false,
        ));
      } else if (!(await _db.myCoursesDao.getByCourse(course)).validated) {
        add(LibraryEvent.updateCourse(
          course: course,
          updateLastListened: false,
        ));
      }
    }
  }

  Future<void> _onClear(
    _ClearLibraryEvent event,
    Emitter<LibraryState> emit,
  ) async {
    _tokens.forEach((key, value) => value.cancel());
    await _storage.deleteLoadedAudio();

    await _db.lessonsDao.deleteAll();
    await _db.exercisesDao.deleteAll();
    await _db.exerciseContentsDao.deleteAll();
    await _db.myCoursesDao.deleteAll();
  }

  Future<void> _onAddCourse(
    _AddCourseEvent event,
    Emitter<LibraryState> emit,
  ) async {
    if (_isExecuting(event.course)) {
      return;
    }

    await MyCoursesRepository.get.addToLibrary(
      event.course,
      event.updateLastListened,
    );
    await _getCourseData(event.course, emit, event.updateLastListened);

    emit(state.copyWith(jobs: Map.from(_jobs)));
  }

  Future<void> _onUpdateCourse(
    _UpdateCourseEvent event,
    Emitter<LibraryState> emit,
  ) async {
    if (_isExecuting(event.course)) {
      return;
    }

    await _getCourseData(event.course, emit, event.updateLastListened);

    if (_jobs[event.course]!.state == JobState.completed) {
      _db.coursesDao.setNeedUpdate(id: event.course, needUpdate: false);
      await _storage.deleteOutdatedAudio(event.course);
    }

    emit(state.copyWith(jobs: Map.from(_jobs)));
  }

  Future<void> _getCourseData(String course, Emitter<LibraryState> emit,
      [bool updateLastListened = true]) async {
    _jobs[course] = JobProgress(state: JobState.executing, progress: 0);
    _tokens[course] = CancelToken();
    emit(state.copyWith(jobs: Map.from(_jobs)));

    try {
      if (updateLastListened) {
        _db.myCoursesDao.updateLastListened(course: course);
      }

      if (!await CoursesRepository.get.isNotUpdating(course)) {
        _jobs[course] = _jobs[course]!.copyWith(state: JobState.failed);
        return emit(state.copyWith(jobs: Map.from(_jobs)));
      }

      _db.myCoursesDao.setValidated(course: course, validated: false);
      await _cleanDatabase(course);

      await for (final double value in CoursesRepository.get.getCourseData(
        course: course,
        cancelToken: _tokens[course]!,
      )) {
        _jobs[course] = _jobs[course]!.copyWith(progress: value);
        emit(state.copyWith(jobs: Map.from(_jobs)));
      }

      if (_jobs[course]!.progress == 1.0) {
        _jobs[course] = _jobs[course]!.copyWith(state: JobState.completed);
        _db.myCoursesDao.setValidated(course: course, validated: true);
      } else {
        await _cleanDatabase(course);
        _jobs[course] = _jobs[course]!.copyWith(state: JobState.failed);
      }
    } on Exception {
      _jobs[course] = _jobs[course]!.copyWith(state: JobState.failed);
    }
  }

  Future<void> _onCancelJob(
    _CancelJobEvent event,
    Emitter<LibraryState> emit,
  ) async {
    final JobProgress? progress = _jobs[event.course];

    if (progress != null && progress.state == JobState.executing) {
      _tokens[event.course]?.cancel();
      _jobs[event.course] = progress.copyWith(state: JobState.revoked);
      emit(state.copyWith(jobs: Map.from(_jobs)));
    }
  }

  Future<void> _onRemoveCourse(
    _RemoveCourseEvent event,
    Emitter<LibraryState> emit,
  ) async {
    final MyCourse myCourse = await _db.myCoursesDao.getByCourse(event.course);
    MyCoursesRepository.get
        .update(firebaseId: myCourse.firebase_id!, downloaded: false);

    await _db.myCoursesDao.deleteByCourse(event.course);
    await _cleanDatabase(event.course);
    await _storage.deleteCourseAudio(event.course);
  }

  Future<void> _cleanDatabase(String course) async {
    await _db.lessonsDao.deleteByCourse(course);
    await _db.exercisesDao.deleteByCourse(course);
    await _db.exerciseContentsDao.deleteByCourse(course);
  }

  bool _isExecuting(String course) {
    return _jobs[course] != null && _jobs[course]!.state == JobState.executing;
  }
}
