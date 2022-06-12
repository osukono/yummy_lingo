import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yummy_lingo/infrastructure/moor/models/lessons.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

class LessonsRepository {
  static const LESSONS = 'lessons';

  static final CollectionReference<Lesson> _reference =
      FirebaseFirestore.instance.collection(LESSONS).withConverter(
            fromFirestore: (snapshot, _) => Lesson.fromJson(
                snapshot.data()!..putIfAbsent('id', () => snapshot.id)),
            toFirestore: (_, __) => {},
          );

  LessonsRepository._();

  static final LessonsRepository get = LessonsRepository._();

  Future<List<Lesson>> lessons(String course) async {
    return (await _reference
            .where(Lessons.COURSE, isEqualTo: course)
            .orderBy(Lessons.ORDER)
            .get())
        .docs
        .map((doc) => doc.data())
        .toList();
  }

  Stream<List<Lesson>> stream(String course) {
    final Query<Lesson> query = _reference
        .where(Lessons.COURSE, isEqualTo: course)
        .orderBy(Lessons.ORDER);
    return query.snapshots().map((list) {
      return list.docs.map((doc) => doc.data()).toList();
    });
  }
}
