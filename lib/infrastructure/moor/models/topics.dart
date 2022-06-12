import 'package:moor_flutter/moor_flutter.dart';

class Topics extends Table {
  static const TYPE = 'type';

  TextColumn get id => text()();

  TextColumn get type => text()();

  @override
  Set<Column> get primaryKey => {id};
}
