import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yummy_lingo/infrastructure/moor/models/my_courses.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';

class MyCoursesRepository {
  static const COURSES_PROGRESS = 'courses_progress';

  static final CollectionReference<Map<String, dynamic>> _reference =
      FirebaseFirestore.instance.collection(COURSES_PROGRESS);

  final MoorDB _db;

  MyCoursesRepository._(this._db);

  static final MyCoursesRepository get = MyCoursesRepository._(getIt<MoorDB>());

  Future<List<dynamic>> load() async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;
    return (await _reference
            .where(MyCourses.USER, isEqualTo: userId)
            .where(MyCourses.DOWNLOADED, isEqualTo: true)
            .orderBy(MyCourses.LAST_LISTENED, descending: true)
            .get())
        .docs
        .map((e) => e['id'])
        .toList();
  }

  Future<void> addToLibrary(String course,
      [bool updateLastListened = true]) async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;
    final int now = DateTime.now().millisecondsSinceEpoch;
    final List<DocumentSnapshot<Map<String, dynamic>>> documents =
        (await _reference
                .where(MyCourses.ID, isEqualTo: course)
                .where(MyCourses.USER, isEqualTo: userId)
                .get())
            .docs;
    if (documents.isNotEmpty) {
      final String firebaseId = documents[0].id;
      final Map<String, dynamic> data = <String, dynamic>{};
      data[MyCourses.DOWNLOADED] = true;
      if (updateLastListened) {
        data[MyCourses.LAST_LISTENED] = now;
      }
      _reference.doc(firebaseId).set(data, SetOptions(merge: true));
      await _db.myCoursesDao.insert_(
        MyCourse.fromJson(
          MyCourses.fillDefaults(documents[0].data()!
            ..putIfAbsent(MyCourses.FIREBASE_ID, () => firebaseId)),
        ),
      );
    } else {
      await _db.myCoursesDao.insert_(MyCourse(
        id: course,
        downloaded: true,
        current_lesson: 0,
        current_part: 0,
        last_listened: now,
        bought: false,
        validated: false,
      ));
      MyCoursesRepository.get.create(now, course);
    }
  }

  Future<void> create(int now, String courseId) async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;

    final List<DocumentSnapshot> documents = (await _reference
            .where(MyCourses.ID, isEqualTo: courseId)
            .where(MyCourses.USER, isEqualTo: userId)
            .get())
        .docs;

    String firebaseId;
    if (documents.isNotEmpty) {
      firebaseId = documents[0].id;

      final Map<String, dynamic> data = <String, dynamic>{};
      data[MyCourses.DOWNLOADED] = true;
      data[MyCourses.LAST_LISTENED] = now;

      _reference.doc(firebaseId).set(data, SetOptions(merge: true));
    } else {
      final Map<String, dynamic> data = <String, dynamic>{};
      data[MyCourses.ID] = courseId;
      data[MyCourses.DOWNLOADED] = true;
      data[MyCourses.CURRENT_LESSON] = 0;
      data[MyCourses.CURRENT_PART] = 0;
      data[MyCourses.LAST_LISTENED] = now;
      data[MyCourses.USER] = userId;

      final DocumentReference ref = _reference.doc();
      await ref.set(data);
      firebaseId = ref.id;
    }

    _db.myCoursesDao.updateFirebaseId(course: courseId, firebaseId: firebaseId);
  }

  Future<void> update({
    required String firebaseId,
    bool? downloaded,
    bool? listening_done,
    int? current_lesson,
    int? current_part,
    int? last_listened,
    bool? bought,
    String? purchase_id,
  }) async {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (bought != null) {
      data[MyCourses.BOUGHT] = bought;
    }
    if (purchase_id != null) {
      data[MyCourses.PURCHASE_ID] = purchase_id;
    }
    if (downloaded != null) {
      data[MyCourses.DOWNLOADED] = downloaded;
    }
    if (current_lesson != null) {
      data[MyCourses.CURRENT_LESSON] = current_lesson;
    }
    if (current_part != null) {
      data[MyCourses.CURRENT_PART] = current_part;
    }
    if (last_listened != null) {
      data[MyCourses.LAST_LISTENED] = last_listened;
    }

    _reference.doc(firebaseId).set(data, SetOptions(merge: true));
  }
}
