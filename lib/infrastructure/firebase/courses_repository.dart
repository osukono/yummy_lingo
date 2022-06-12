import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:yummy_lingo/extensions.dart';
import 'package:yummy_lingo/infrastructure/config.dart';
import 'package:yummy_lingo/infrastructure/firebase/exercises_repository.dart';
import 'package:yummy_lingo/infrastructure/firebase/lessons_repository.dart';
import 'package:yummy_lingo/infrastructure/moor/models/courses.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/main.dart';

class CoursesRepository {
  static const COURSES = 'courses';

  static final CollectionReference<Map<String, dynamic>> _reference =
      FirebaseFirestore.instance.collection(COURSES);

  final MoorDB _db;

  CoursesRepository._(this._db);

  static final CoursesRepository get = CoursesRepository._(getIt<MoorDB>());

  Future<void> load() async {
    if (!await isUpdateAvailable()) {
      return;
    }

    final List<Course> oldData = await _db.coursesDao.getAll();
    await _db.coursesDao.deleteAll();

    final List<DocumentSnapshot<Map<String, dynamic>>> documents =
        (await _reference
                .where(
                  Courses.PLAYER_VERSION,
                  isLessThanOrEqualTo: PLAYER_VERSION,
                )
                .get())
            .docs;
    for (DocumentSnapshot<Map<String, dynamic>> doc in documents) {
      final String courseId = doc.id;
      bool needUpdate = false;
      final Course? oldCourse =
          oldData.firstWhereOrNull((course) => course.id == courseId);
      if (oldCourse != null) {
        needUpdate = oldCourse.need_update ||
            doc.data()![Courses.COURSE_VERSION] > oldCourse.course_version;
      }

      final data = doc.data()!;
      await _db.coursesDao.insert(Course.fromJson(
        Courses.fillDefaults(data
          ..putIfAbsent('id', () => courseId)
          ..putIfAbsent(Courses.NEED_UPDATE, () => needUpdate)),
      ));

      //Get course for free if it was downloaded before it's plan changed
      final int? demo = doc.data()![Courses.DEMO];
      if (demo != null && oldCourse != null && oldCourse.demo == 1000) {
        final MyCourse? myCourse = await _db.myCoursesDao.getByCourse(courseId);
        if (myCourse != null && !myCourse.bought) {
          _db.myCoursesDao.updateBought(
            id: courseId,
            purchaseID: 'free',
            firebaseId: myCourse.firebase_id!,
          );
        }
      }
    }

    await setUpdated();
  }

  Stream<double> getCourseData({
    required String course,
    required CancelToken cancelToken,
  }) async* {
    double progress = 0;

    try {
      final List<Lesson> lessons = await LessonsRepository.get.lessons(course);

      if (lessons.isEmpty) {
        return;
      }

      await _db.coursesDao
          .updateLessonsCount(id: course, count: lessons.length);

      await _db.lessonsDao.insertMultiple(lessons);

      for (Lesson lesson in lessons) {
        if (cancelToken.isCancelled) {
          return;
        }

        final List<DocumentSnapshot<Map<String, dynamic>>> exercises =
            await ExercisesRepository.get
                .load(lesson: lesson.id, course: course);

        await _db.exerciseContentsDao.insertMultiple(
          exercises,
          course,
        );

        progress = (lessons.indexOf(lesson) + 1) / lessons.length;

        yield progress;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<bool> isNotUpdating(String id) async {
    final Course? course = await getCourse(id);

    return course != null && !course.is_updating;
  }

  Future<Course?> getCourse(String id) async {
    final DocumentSnapshot<Map<String, dynamic>> document =
        await _reference.doc(id).get();

    if (document.exists == false) {
      return null;
    }

    final Course course = Course.fromJson(
      Courses.fillDefaults(
        document.data()!..putIfAbsent('id', () => document.id),
      ),
    );

    return course;
  }

  Future<bool> isUpdateAvailable() async {
    final clientVersion =
        await Preferences.get.getInt(Preferences.CLIENT_COURSES_VERSION);
    final serverVersion =
        await Preferences.get.getInt(Config.SERVER_COURSES_VERSION);

    return clientVersion < serverVersion;
  }

  Future<void> setUpdated() async {
    final serverVersion =
        await Preferences.get.getInt(Config.SERVER_COURSES_VERSION);

    await Preferences.get
        .setInt(Preferences.CLIENT_COURSES_VERSION, serverVersion);
  }
}
