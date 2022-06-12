import 'package:moor_flutter/moor_flutter.dart';

class ExerciseContents extends Table {
  static const COURSE = 'course';
  static const EXERCISE_ID = 'exercise_id';
  static const ORDER = 'order';
  static const C_VALUE = 'c_value';
  static const C_AUDIO = 'c_audio';
  static const C_DURATION = 'c_duration';
  static const C_LINEAR_AUDIO = 'c_linear_audio';
  static const C_LINEAR_DURATION = 'c_linear_duration';
  static const C_CHUNKS = 'c_chunks';
  static const C_EXTRA_CHUNKS = 'c_extra_chunks';
  static const C_CAPITALIZED_WORDS = 'c_capitalized_words';
  static const T_VALUE = 't_value';
  static const T_AUDIO = 't_audio';
  static const T_DURATION = 't_duration';
  static const T_LINEAR_AUDIO = 't_linear_audio';
  static const T_LINEAR_DURATION = 't_linear_duration';

  IntColumn get id => integer().autoIncrement()();

  TextColumn get course => text().nullable()();

  TextColumn get exercise_id => text().nullable()();

  IntColumn get order => integer().named('order_').nullable()();

  TextColumn get c_value => text().nullable()();

  TextColumn get c_audio => text().nullable()();

  IntColumn get c_duration => integer().withDefault(const Constant(0))();

  TextColumn get c_linear_audio => text().nullable()();

  IntColumn get c_linear_duration => integer().withDefault(const Constant(0))();

  TextColumn get c_chunks => text().nullable()();

  TextColumn get c_extra_chunks => text().nullable()();

  TextColumn get c_capitalized_words => text().nullable()();

  TextColumn get t_value => text().nullable()();

  TextColumn get t_audio => text().nullable()();

  IntColumn get t_duration => integer().withDefault(const Constant(0))();

  TextColumn get t_linear_audio => text().nullable()();

  IntColumn get t_linear_duration => integer().withDefault(const Constant(0))();
}
