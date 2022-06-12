import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/models/lessons.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

part 'lessons_dao.g.dart';

@UseDao(tables: [Lessons])
class LessonsDao extends DatabaseAccessor<MoorDB> with _$LessonsDaoMixin {
  LessonsDao(db) : super(db);

  Stream<List<Lesson>> watchAll(String course) {
    return (lessons.select()
          ..where((t) => t.course.equals(course))
          ..orderBy([
            (t) => OrderingTerm(expression: t.order),
          ]))
        .watch();
  }

  Future<List<Lesson>> getAll(String course) {
    return (lessons.select()
          ..where((t) => t.course.equals(course))
          ..orderBy([
            (t) => OrderingTerm(expression: t.order),
          ]))
        .get();
  }

  Future<Lesson?> getLesson(String course, int order) async {
    return (lessons.select()
          ..where((t) => t.course.equals(course))
          ..where((t) => t.order.equals(order)))
        .getSingleOrNull();
  }

  Future<int> getLessonsCount(String course) async {
    return (await (lessons.select()..where((t) => t.course.equals(course)))
            .get())
        .length;
  }

  Future deleteByCourse(String course) =>
      lessons.deleteWhere((t) => t.course.equals(course));

  Future insert_(Insertable<Lesson> data) => into(lessons).insert(data);

  Future update_(Insertable<Lesson> data) => update(lessons).replace(data);

  Future delete_(Insertable<Lesson> data) => delete(lessons).delete(data);

  Future deleteAll() => lessons.delete().go();

  Future<void> insertMultiple(List<Lesson> _lessons) async {
    batch(
      (batch) {
        batch.insertAll(lessons, _lessons);
      },
    );
  }
}
