import 'package:moor_flutter/moor_flutter.dart';

class Exercises extends Table {
  static const DATA = 'data';
  static const LESSON_ID = 'lesson_id';
  static const ORDER = 'order';
  static const COURSE = 'course';

  TextColumn get id => text()();

  TextColumn get lesson_id => text().nullable()();

  IntColumn get order => integer().named('order_').nullable()();

  TextColumn get course => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
