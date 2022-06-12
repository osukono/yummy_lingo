import 'package:yummy_lingo/domain/failures/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString('Encountered a ValueFailure. $valueFailure');
  }
}
