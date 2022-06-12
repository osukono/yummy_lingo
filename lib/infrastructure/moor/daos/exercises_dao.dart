import 'package:cloud_firestore/cloud_firestore.dart' as cloud;
import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/models/exercise_contents.dart';
import 'package:yummy_lingo/infrastructure/moor/models/exercises.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

part 'exercises_dao.g.dart';

@UseDao(tables: [Exercises, ExerciseContents])
class ExercisesDao extends DatabaseAccessor<MoorDB> with _$ExercisesDaoMixin {
  ExercisesDao(db) : super(db);

  Future<List<Exercise>> getByLesson(String lesson) {
    return (exercises.select()
          ..where((t) => t.lesson_id.equals(lesson))
          ..orderBy(
            [(t) => OrderingTerm(expression: t.order)],
          ))
        .get();
  }

  Future<List<ExerciseWithContent>> getWithContent(String lesson) async {
    final query = (exercises.select()
          ..where((t) => t.lesson_id.equals(lesson))
          ..orderBy([(t) => OrderingTerm(expression: t.order)]))
        .join([
      leftOuterJoin(exerciseContents,
          exerciseContents.exercise_id.equalsExp(exercises.id))
    ]);

    final rows = await query.get();
    final data = <Exercise, List<ExerciseContent>>{};

    for (final row in rows) {
      final exercise = row.readTable(exercises);
      final exerciseContent = row.readTable(exerciseContents);

      data.putIfAbsent(exercise, () => []).add(exerciseContent);
    }

    for (final entry in data.entries) {
      entry.value.sort((a, b) => a.order!.compareTo(b.order!));
    }

    return [
      for (final entry in data.entries)
        ExerciseWithContent(exercise: entry.key, content: entry.value)
    ];
  }

  Future insert_(Insertable<Exercise> data) => into(exercises).insert(data);

  Future update_(Insertable<Exercise> data) => update(exercises).replace(data);

  Future delete_(Insertable<Exercise> data) => delete(exercises).delete(data);

  Future deleteByCourse(String course) =>
      exercises.deleteWhere((t) => t.course.equals(course));

  Future deleteAll() => exercises.delete().go();

  Future<void> insertMultiple(
      List<cloud.DocumentSnapshot<Map<String, dynamic>>> documents,
      String course) async {
    batch(
      (batch) {
        for (cloud.DocumentSnapshot<Map<String, dynamic>> doc in documents) {
          batch.insert(
            exercises,
            Exercise.fromJson(
              doc.data()!
                ..putIfAbsent('id', () => doc.id)
                ..putIfAbsent(Exercises.COURSE, () => course),
            ),
          );
        }
      },
    );
  }
}

class ExerciseWithContent {
  final Exercise exercise;
  final List<ExerciseContent> content;

  ExerciseWithContent({
    required this.exercise,
    required this.content,
  });
}
