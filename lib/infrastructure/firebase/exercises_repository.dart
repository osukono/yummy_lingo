import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yummy_lingo/infrastructure/moor/models/exercises.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';

class ExercisesRepository {
  static const EXERCISES = 'exercises';

  static final CollectionReference<Map<String, dynamic>> _reference =
      FirebaseFirestore.instance.collection(EXERCISES);

  final MoorDB _db;

  ExercisesRepository._(this._db);

  static final ExercisesRepository get = ExercisesRepository._(getIt<MoorDB>());

  Future<List<DocumentSnapshot<Map<String, dynamic>>>> load({
    required String lesson,
    required String course,
  }) async {
    final List<DocumentSnapshot<Map<String, dynamic>>> exercises =
        (await _reference
                .where(Exercises.LESSON_ID, isEqualTo: lesson)
                .orderBy(Exercises.ORDER)
                .get())
            .docs;

    await _db.exercisesDao.insertMultiple(exercises, course);

    return exercises;
  }
}
