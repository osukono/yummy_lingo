import 'package:cloud_firestore/cloud_firestore.dart' as cloud;
import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/models/exercise_contents.dart';
import 'package:yummy_lingo/infrastructure/moor/models/exercises.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

part 'exercise_contents_dao.g.dart';

@UseDao(tables: [ExerciseContents])
class ExerciseContentsDao extends DatabaseAccessor<MoorDB>
    with _$ExerciseContentsDaoMixin {
  ExerciseContentsDao(db) : super(db);

  Future<List<ExerciseContent>> getByCourse(String course) {
    return (exerciseContents.select()
          ..where((t) => t.course.equals(course))
          ..orderBy(
            [(t) => OrderingTerm(expression: t.order)],
          ))
        .get();
  }

  Future<List<ExerciseContent>> getByExerciseIds(List<String> ids) {
    return (exerciseContents.select()
          ..where((t) => t.exercise_id.isIn(ids))
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.exercise_id),
              (t) => OrderingTerm(expression: t.order)
            ],
          ))
        .get();
  }

  Future insert_(Insertable<ExerciseContent> data) =>
      into(exerciseContents).insert(data);

  Future update_(Insertable<ExerciseContent> data) =>
      exerciseContents.update().replace(data);

  Future delete_(Insertable<ExerciseContent> data) =>
      delete(exerciseContents).delete(data);

  Future deleteAll() => exerciseContents.delete().go();

  Future deleteByCourse(String course) =>
      exerciseContents.deleteWhere((t) => t.course.equals(course));

  Future<void> insertMultiple(
    List<cloud.DocumentSnapshot<Map<String, dynamic>>> documents,
    String course,
  ) async {
    batch(
      (batch) {
        for (cloud.DocumentSnapshot<Map<String, dynamic>> doc in documents) {
          final List<dynamic> content = doc.data()![Exercises.DATA];

          for (int i = 0; i < content.length; i++) {
            final dynamic data = content[i];
            batch.insert(
              exerciseContents,
              ExerciseContentsCompanion(
                exercise_id: Value(doc.id),
                course: Value(course),
                order: Value(i),
                c_value: Value(data[ExerciseContents.C_VALUE]),
                c_audio: Value(data[ExerciseContents.C_AUDIO]),
                c_duration: Value(data[ExerciseContents.C_DURATION] ?? 0),
                c_linear_audio: Value(data[ExerciseContents.C_LINEAR_AUDIO]),
                c_linear_duration:
                    Value(data[ExerciseContents.C_LINEAR_DURATION] ?? 0),
                c_chunks: Value(data[ExerciseContents.C_CHUNKS]),
                c_extra_chunks: Value(data[ExerciseContents.C_EXTRA_CHUNKS]),
                c_capitalized_words:
                    Value(data[ExerciseContents.C_CAPITALIZED_WORDS]),
                t_value: Value(data[ExerciseContents.T_VALUE]),
                t_audio: Value(data[ExerciseContents.T_AUDIO]),
                t_duration: Value(data[ExerciseContents.T_DURATION] ?? 0),
                t_linear_audio: Value(data[ExerciseContents.T_LINEAR_AUDIO]),
                t_linear_duration:
                    Value(data[ExerciseContents.T_LINEAR_DURATION] ?? 0),
              ),
            );
          }
        }
      },
    );
  }
}
