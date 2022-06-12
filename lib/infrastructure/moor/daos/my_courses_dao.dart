import 'package:cloud_firestore/cloud_firestore.dart' as cloud;
import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/firebase/my_courses_repository.dart';
import 'package:yummy_lingo/infrastructure/moor/models/courses.dart';
import 'package:yummy_lingo/infrastructure/moor/models/languages.dart';
import 'package:yummy_lingo/infrastructure/moor/models/my_courses.dart';
import 'package:yummy_lingo/infrastructure/moor/models/topics.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/main.dart';

part 'my_courses_dao.g.dart';

@UseDao(tables: [MyCourses, Courses, Topics, Languages])
class MyCoursesDao extends DatabaseAccessor<MoorDB> with _$MyCoursesDaoMixin {
  MyCoursesDao(db) : super(db);

  Future<bool> isMy(String course) async {
    final query = myCourses.select()
      ..where(
        (t) => t.id.equals(course),
      );
    return (await query.get()).isNotEmpty;
  }

  Stream<List<MyCourseEntry>> watchEntries() {
    final _langs = alias(languages, '_langs');
    final _trans = alias(languages, '_trans');

    final query = (myCourses.select()
          ..orderBy([
            (t) => OrderingTerm(
                expression: t.last_listened, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(courses, courses.id.equalsExp(myCourses.id)),
      leftOuterJoin(topics, topics.id.equalsExp(courses.topic)),
      leftOuterJoin(_langs, _langs.id.equalsExp(courses.language)),
      leftOuterJoin(_trans, _trans.id.equalsExp(courses.translation)),
    ]);

    return query.watch().map((rows) {
      return rows
          .map((row) {
            // Check if all dependencies loaded
            final Course? course = row.readTableOrNull(courses);
            final Topic? topic = row.readTableOrNull(topics);
            final Language? language = row.readTableOrNull(_langs);
            final Language? translation = row.readTableOrNull(_trans);

            if (course != null &&
                topic != null &&
                language != null &&
                translation != null) {
              return MyCourseEntry(
                myCourse: row.readTable(myCourses),
                course: course,
                topic: topic,
                language: language,
                translation: translation,
              );
            }
          })
          .where((element) => element != null)
          .where((element) => element!.course.player_version <= PLAYER_VERSION)
          .toList()
          .cast<MyCourseEntry>();
    });
  }

  Future<MyCourse> getByCourse(String course) =>
      (myCourses.select()..where((t) => t.id.equals(course))).getSingle();

  Future<bool> exists(String course) async {
    return await (myCourses.select()..where((t) => t.id.equals(course)))
            .getSingleOrNull() !=
        null;
  }

  Future<MyCourseEntry> getEntryByCourse(String course) async {
    final _langs = alias(languages, '_langs');
    final _trans = alias(languages, '_trans');

    final query = (myCourses.select()..where((t) => t.id.equals(course))).join([
      leftOuterJoin(courses, courses.id.equalsExp(myCourses.id)),
      leftOuterJoin(topics, topics.id.equalsExp(courses.topic)),
      leftOuterJoin(_langs, _langs.id.equalsExp(courses.language)),
      leftOuterJoin(_trans, _trans.id.equalsExp(courses.translation)),
    ]);

    final TypedResult row = await query.getSingle();

    return MyCourseEntry(
      myCourse: row.readTable(myCourses),
      course: row.readTable(courses),
      topic: row.readTable(topics),
      language: row.readTable(_langs),
      translation: row.readTable(_trans),
    );
  }

  Future<MyCourse?> getLastListened() async {
    return (myCourses.select()
          ..orderBy([
            (t) => OrderingTerm(
                  expression: t.last_listened,
                  mode: OrderingMode.desc,
                ),
          ])
          ..limit(1))
        .getSingleOrNull();
  }

  Stream<MyCourse> watchById(String course) =>
      (myCourses.select()..where((t) => t.id.equals(course))).watchSingle();

  Future insert_(Insertable<MyCourse> data) => into(myCourses).insert(data);

  Future update_(Insertable<MyCourse> data) => update(myCourses).replace(data);

  Future delete_(Insertable<MyCourse> data) => delete(myCourses).delete(data);

  Future updateFirebaseId({
    required String course,
    required String firebaseId,
  }) {
    return (myCourses.update()..where((t) => t.id.equals(course))).write(
      MyCoursesCompanion(
        firebase_id: Value(firebaseId),
      ),
    );
  }

  Future setValidated({required String course, required bool validated}) {
    return (myCourses.update()..where((t) => t.id.equals(course))).write(
      MyCoursesCompanion(
        validated: Value(validated),
      ),
    );
  }

  Future deleteAll() => myCourses.delete().go();

  Future deleteByCourse(String course) =>
      myCourses.deleteWhere((t) => t.id.equals(course));

  ///---------------------------------------------------------------------------
  /// Course Progress
  ///---------------------------------------------------------------------------

  Future updateProgress({
    required String id,
    required String? firebaseId,
    required int currentLesson,
    required int currentPart,
  }) {
    if (firebaseId != null) {
      MyCoursesRepository.get.update(
        firebaseId: firebaseId,
        current_lesson: currentLesson,
        listening_done: false,
        current_part: currentPart,
      );
    }

    return (myCourses.update()..where((t) => t.id.equals(id))).write(
      MyCoursesCompanion(
        current_lesson: Value(currentLesson),
        current_part: Value(currentPart),
      ),
    );
  }

  Future updateCurrentPart({
    required String id,
    required String? firebaseId,
    required int currentPart,
  }) {
    if (firebaseId != null) {
      MyCoursesRepository.get.update(
        firebaseId: firebaseId,
        current_part: currentPart,
        listening_done: false,
      );
    }

    return (myCourses.update()..where((t) => t.id.equals(id))).write(
      MyCoursesCompanion(
        current_part: Value(currentPart),
      ),
    );
  }

  Future updateLastListened({
    required String course,
    String? firebaseId,
  }) {
    final int now = DateTime.now().millisecondsSinceEpoch;
    if (firebaseId != null) {
      MyCoursesRepository.get.update(
        firebaseId: firebaseId,
        last_listened: now,
      );
    }

    return (myCourses.update()..where((t) => t.id.equals(course))).write(
      MyCoursesCompanion(
        last_listened: Value(now),
      ),
    );
  }

  Future updateBought({
    required String id,
    required String purchaseID,
    required String firebaseId,
  }) {
    return (myCourses.update()..where((t) => t.id.equals(id))).write(
      MyCoursesCompanion(
        bought: const Value(true),
        purchase_id: Value(purchaseID),
      ),
    );
  }

  Future<void> insertMultiple(
    List<cloud.DocumentSnapshot<Map<String, dynamic>>> documents,
  ) async {
    batch(
      (batch) {
        for (cloud.DocumentSnapshot<Map<String, dynamic>> doc in documents) {
          batch.insert(
              myCourses,
              MyCourse.fromJson(
                MyCourses.fillDefaults(doc.data()!
                  ..putIfAbsent(MyCourses.FIREBASE_ID, () => doc.id)),
              ),
              mode: InsertMode.insertOrReplace);
        }
      },
    );
  }
}

class MyCourseEntry {
  final MyCourse myCourse;
  final Course course;
  final Topic topic;
  final Language language;
  final Language translation;

  MyCourseEntry({
    required this.myCourse,
    required this.course,
    required this.topic,
    required this.language,
    required this.translation,
  });
}
