import 'package:moor_flutter/moor_flutter.dart';

class Languages extends Table {
  static const CODE = 'code';
  static const NAME = 'name';
  static const ICON = 'icon';
  static const COURSE = 'course';
  static const TRANSLATIONS = 'translations';
  static const PAUSE_AFTER_EXERCISE = 'pause_after_exercise';
  static const LISTENING_RATE = 'listening_rate';
  static const PRACTICE_RATE = 'practice_rate';

  TextColumn get id => text()();

  TextColumn get code => text()();

  TextColumn get name => text()();

  TextColumn get icon => text()();

  BoolColumn get course => boolean().withDefault(const Constant(false))();

  RealColumn get pause_after_exercise =>
      real().withDefault(const Constant(0.0))();

  RealColumn get listening_rate =>
      real().named('pause_between').withDefault(const Constant(0.0))();

  RealColumn get practice_rate =>
      real().named('pause_practise_1').withDefault(const Constant(0.0))();

  @override
  Set<Column> get primaryKey => {id};

  static Map<String, dynamic> fillDefaults(Map<String, dynamic> data) {
    return data
      ..putIfAbsent(Languages.COURSE, () => false)
      ..putIfAbsent(Languages.PAUSE_AFTER_EXERCISE, () => 0)
      ..putIfAbsent(Languages.LISTENING_RATE, () => 0)
      ..putIfAbsent(Languages.PRACTICE_RATE, () => 0);
  }
}
