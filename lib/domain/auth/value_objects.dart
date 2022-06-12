import 'package:dartz/dartz.dart';
import 'package:yummy_lingo/domain/core/validators.dart';
import 'package:yummy_lingo/domain/core/value_objects.dart';
import 'package:yummy_lingo/domain/failures/value_failures.dart';

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    return UserName._(validateUserName(input));
  }

  const UserName._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
