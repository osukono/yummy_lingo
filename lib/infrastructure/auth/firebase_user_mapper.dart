import 'package:firebase_auth/firebase_auth.dart';
import 'package:yummy_lingo/domain/auth/domain_user.dart';

extension FirebaseUserDomainX on User {
  DomainUser toDomain({
    String? token,
    String? name,
    String? language,
    String? translation,
  }) {
    return DomainUser(
      id: this.uid,
      // isAnonymous: this.isAnonymous,
      name: name ?? this.displayName,
      token: token,
      photo: this.photoURL,
      email: this.email,
      language: language,
      translation: translation,
    );
  }
}
