import 'dart:io';

import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/models/courses.dart';
import 'package:yummy_lingo/infrastructure/moor/models/languages.dart';
import 'package:yummy_lingo/infrastructure/moor/models/my_courses.dart';
import 'package:yummy_lingo/infrastructure/moor/models/topics.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

part 'courses_dao.g.dart';

@UseDao(tables: [Courses, Languages, Topics, MyCourses])
class CoursesDao extends DatabaseAccessor<MoorDB> with _$CoursesDaoMixin {
  CoursesDao(db) : super(db);

  Future<List<Course>> getAll() => (courses.select()
        ..orderBy([
          (t) => OrderingTerm(expression: t.level),
        ]))
      .get();

  Future<List<Course>> getAllByLanguage(String language, String translation) =>
      (courses.select()
            ..where((t) => t.language.equals(language))
            ..where((t) => t.translation.equals(translation))
            ..orderBy([
              (t) => OrderingTerm(expression: t.level),
            ]))
          .get();

  Stream<List<Course>> watchCourses(String language, String translation) =>
      (courses.select()
            ..where((t) => t.language.equals(language))
            ..where((t) => t.translation.equals(translation))
            ..orderBy([
              (t) => OrderingTerm(expression: t.level),
            ]))
          .watch();

  Stream<List<CourseEntry>> watchEntries(
      String language_id, String translation_id) {
    final lang = alias(languages, 'l');
    final trans = alias(languages, 't');

    return (courses.select()
          ..where((t) => t.hidden.equals(false))
          ..where((t) => t.language.equals(language_id))
          ..where((t) => t.translation.equals(translation_id))
          ..orderBy([(t) => OrderingTerm(expression: t.level)]))
        .join([
          leftOuterJoin(lang, lang.id.equalsExp(courses.language)),
          leftOuterJoin(trans, trans.id.equalsExp(courses.translation)),
          leftOuterJoin(topics, topics.id.equalsExp(courses.topic)),
          leftOuterJoin(myCourses, myCourses.id.equalsExp(courses.id)),
        ])
        .watch()
        .map((rows) {
          final List<CourseEntry> result = rows
              .where((row) => row.readTableOrNull(myCourses) == null)
              .map((row) {
            return CourseEntry(
                course: row.readTable(courses),
                language: row.readTable(lang),
                translation: row.readTable(trans),
                topic: row.readTable(topics));
          }).toList();
          // result.removeWhere((model) => model.myCourse != null);
          return result;
        });
  }

  Future<Course> getById(String id) async {
    return (courses.select()..where((t) => t.id.equals(id))).getSingle();
  }

  Future<Course> getByProductId(String productId) async {
    if (Platform.isAndroid) {
      return (courses.select()
            ..where((t) => t.android_product_id.equals(productId)))
          .getSingle();
    } else {
      return (courses.select()
            ..where((t) => t.ios_product_id.equals(productId)))
          .getSingle();
    }
  }

  Stream<Course> watchSingle(String id) {
    return (courses.select()..where((t) => t.id.equals(id))).watchSingle();
  }

  Future insert(Insertable<Course> data) => into(courses).insert(data);

  Future deleteAll() async {
    return courses.delete().go();
  }

  Future setNeedUpdate({required String id, required bool needUpdate}) {
    return (courses.update()..where((t) => t.id.equals(id))).write(
      CoursesCompanion(
        need_update: Value(needUpdate),
      ),
    );
  }

  Future updateLessonsCount({required String id, required int count}) {
    return (courses.update()..where((t) => t.id.equals(id))).write(
      CoursesCompanion(
        lessons_count: Value(count),
      ),
    );
  }
}

class CourseEntry {
  final Course course;
  final Language language;
  final Language translation;
  final Topic topic;

  CourseEntry({
    required this.course,
    required this.language,
    required this.translation,
    required this.topic,
  });
}
