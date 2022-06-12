import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yummy_lingo/domain/auth/domain_user.dart';

class UsersRepository {
  static const USERS = 'users';

  static final CollectionReference<Map<String, dynamic>> _reference =
      FirebaseFirestore.instance.collection(USERS);

  UsersRepository._();

  static final UsersRepository get = UsersRepository._();

  Future<void> createOrUpdate(DomainUser user) async {
    await _reference.doc(user.id).set(user.toJson(), SetOptions(merge: true));
  }

  Future<DomainUser?> load(String uid) async {
    final DocumentSnapshot<Map<String, dynamic>> doc =
        await _reference.doc(uid).get();

    if (doc.data() != null) {
      return DomainUser.fromJson(uid, data: doc.data()!);
    } else {
      return null;
    }
  }

  Future<void> updateILearn(String iLearn) async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;

    await _reference.doc(userId).update(<String, dynamic>{
      DomainUser.LANGUAGE_LEARN_ID: iLearn,
    });
  }

  Future<void> updateISpeak(String iSpeak) async {
    final String userId = FirebaseAuth.instance.currentUser!.uid;

    await _reference.doc(userId).update(<String, dynamic>{
      DomainUser.LANGUAGE_SPEAK_ID: iSpeak,
    });
  }
}
