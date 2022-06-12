import 'package:moor_flutter/moor_flutter.dart';

class MyCourses extends Table {
  static const DOWNLOADED = 'downloaded';
  static const CURRENT_LESSON = 'current_lesson';
  static const CURRENT_PART = 'current_part';
  static const LAST_LISTENED = 'last_listened';
  static const ID = 'id';
  static const USER = 'user';
  static const FIREBASE_ID = 'firebase_id';
  static const PURCHASE_ID = 'purchase_id';
  static const BOUGHT = 'bought';
  static const VALIDATED = 'validated';

  TextColumn get id => text()(); //Course ID
  TextColumn get firebase_id => text().nullable()();

  BoolColumn get bought => boolean().withDefault(const Constant(false))();

  TextColumn get purchase_id => text().nullable()();

  IntColumn get current_lesson => integer().withDefault(const Constant(0))();

  IntColumn get current_part => integer().withDefault(const Constant(0))();

  BoolColumn get downloaded => boolean().withDefault(const Constant(false))();

  IntColumn get last_listened => integer().withDefault(const Constant(0))();

  BoolColumn get validated => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};

  static Map<String, dynamic> fillDefaults(Map<String, dynamic> data) {
    return data
      ..putIfAbsent(MyCourses.CURRENT_PART, () => 0)
      ..putIfAbsent(MyCourses.CURRENT_LESSON, () => 0)
      ..putIfAbsent(MyCourses.DOWNLOADED, () => false)
      ..putIfAbsent(MyCourses.BOUGHT, () => false)
      ..putIfAbsent(MyCourses.LAST_LISTENED, () => 0)
      ..putIfAbsent(MyCourses.VALIDATED, () => true);
  }
}
