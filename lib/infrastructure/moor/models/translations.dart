import 'package:moor_flutter/moor_flutter.dart';

class Translations extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get language => text()();
  TextColumn get translation => text()();
}
