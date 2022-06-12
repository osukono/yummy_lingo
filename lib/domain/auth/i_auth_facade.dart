import 'package:dartz/dartz.dart';
import 'package:yummy_lingo/domain/auth/domain_user.dart';
import 'package:yummy_lingo/domain/auth/value_objects.dart';
import 'package:yummy_lingo/domain/failures/auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<DomainUser>> getSignedInUser();

  Future<void> updateUserRecord(
      {String? name, String? language, String? translation});
  Future<Either<AuthFailure, DomainUser>> loadUserRecord();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required UserName userName,
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> resetPassword({
    required EmailAddress emailAddress,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithApple();

  Future<Either<AuthFailure, Unit>> signInAnonymously();

  Future<void> signOut();
}
