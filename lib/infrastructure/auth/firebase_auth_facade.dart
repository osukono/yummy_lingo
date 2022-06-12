import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:yummy_lingo/domain/auth/domain_user.dart';
import 'package:yummy_lingo/domain/auth/i_auth_facade.dart';
import 'package:yummy_lingo/domain/auth/value_objects.dart';
import 'package:yummy_lingo/domain/failures/auth_failure.dart';
import 'package:yummy_lingo/infrastructure/auth/firebase_user_mapper.dart';
import 'package:yummy_lingo/infrastructure/firebase/users_repository.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required UserName userName,
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      final AuthCredential authCredential = EmailAuthProvider.credential(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );

      await linkIfAnonymousUser(authCredential);
      try {
        debugPrint('signInWithCredential');
        await _firebaseAuth.signInWithCredential(authCredential);
      } on FirebaseAuthException catch (e) {
        //signInWithCredential should create a user automatically but it does not
        if (e.code == 'user-not-found') {
          debugPrint('createUserWithEmailAndPassword');
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: emailAddress.getOrCrash(),
              password: password.getOrCrash());
        }
      }

      updateUserRecord(name: userName.getOrCrash());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint(
          'registerWithEmailAndPassword FirebaseAuthException.code=${e.code}');

      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );

      updateUserRecord();

      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint(
          'signInWithEmailAndPassword FirebaseAuthException.code=${e.code}');

      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else if (e.code == 'wrong-password') {
        return left(const AuthFailure.wrongPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    //ToDo: check if disconnect is necessary
    try {
      // Allows user to select another account after signing out
      await _googleSignIn.disconnect();
      // ignore: empty_catches
    } on Exception catch (_) {}

    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final OAuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await linkIfAnonymousUser(authCredential);
      await _firebaseAuth.signInWithCredential(authCredential);

      updateUserRecord();

      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint('signInWithGoogle FirebaseAuthException.code=${e.code}');

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
      final rawNonce = _generateNonce();
      final nonce = _sha256ofString(rawNonce);

      final AuthorizationCredentialAppleID appleCredential =
          await SignInWithApple.getAppleIDCredential(scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ], nonce: nonce);

      final authCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      await linkIfAnonymousUser(authCredential);
      await _firebaseAuth.signInWithCredential(authCredential);

      updateUserRecord();

      return right(unit);
    } on Exception catch (e) {
      debugPrint('signInWithApple Exception ${e.toString()}');

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymously() async {
    final User? currentUser = _firebaseAuth.currentUser;

    if (currentUser != null && currentUser.isAnonymous) {
      return right(unit);
    }

    try {
      await _firebaseAuth.signInAnonymously();

      updateUserRecord();

      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint('signInAnonymously FirebaseAuthException.code=${e.code}');

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(
      {required EmailAddress emailAddress}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(
          email: emailAddress.getOrCrash());

      return left(const AuthFailure.resetEmailSent());
    } on Exception catch (e) {
      debugPrint('resetPassword Exception ${e.toString()}');

      return left(const AuthFailure.serverError());
    }
  }

  //https://firebase.google.com/docs/auth/android/account-linking
  Future<void> linkIfAnonymousUser(AuthCredential authCredential) async {
    final User? currentUser = _firebaseAuth.currentUser;

    if (currentUser != null && currentUser.isAnonymous) {
      try {
        debugPrint('''Link anonymous user with credentials
                      ${authCredential.toString()}''');
        currentUser.linkWithCredential(authCredential);
      } on FirebaseAuthException catch (e) {
        //Thrown if the account corresponding to the credential already exists
        //among users, or is already linked to a Firebase User.
        if (e.code == 'credential-already-in-use') {
          debugPrint('credential-already-in-use');
          await _firebaseAuth.signOut();
        } else {
          rethrow;
        }
      }
      debugPrint('''Anonymous user linked with credentials 
                    ${authCredential.toString()}''');
    }
  }

  @override
  Future<Option<DomainUser>> getSignedInUser() async {
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<void> updateUserRecord(
      {String? name, String? language, String? translation}) async {
    final userOption = await getSignedInUser();
    userOption.fold(
      () => {},
      (DomainUser user) async {
        user.name = name ?? user.name;

        final String? token = await _firebaseAuth.currentUser?.getIdToken();
        user.token = token;

        user.language = language;
        user.translation = translation;

        _storeUser(user);
      },
    );
  }

  @override
  Future<Either<AuthFailure, DomainUser>> loadUserRecord() async {
    final String uid = _firebaseAuth.currentUser!.uid;

    try {
      final DomainUser? user = await UsersRepository.get.load(uid);

      if (user != null) {
        return right(user);
      } else {
        return left(const AuthFailure.userNotFound());
      }
    } on Exception catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
        //ToDo: sign out with apple
      ]);

  Future<void> _storeUser(DomainUser user) async {
    await UsersRepository.get.createOrUpdate(user);
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
