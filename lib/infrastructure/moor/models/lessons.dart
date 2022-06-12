import 'package:moor_flutter/moor_flutter.dart';

class Lessons extends Table {
  static const COURSE = 'course';
  static const ORDER = 'order';
  static const TITLE = 'title';
  static const IMAGE = 'image';
  static const DESCRIPTION = 'description';

  TextColumn get id => text()();

  TextColumn get course => text()();

  IntColumn get order => integer().named('order_')();

  TextColumn get title => text()();

  TextColumn get image => text().nullable()();

  TextColumn get description => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
