import 'package:moor_flutter/moor_flutter.dart';

class Courses extends Table {
  static const LANGUAGE = 'language';
  static const LEVEL = 'level';
  static const LEVEL_NAME = 'level_name';
  static const TITLE = 'title';
  static const TOPIC = 'topic';
  static const TRANSLATION = 'translation';
  static const DESCRIPTION = 'description';
  static const IMAGE = 'image';
  static const LESSONS_COUNT = 'lessons_count';
  static const AUDIO_STORAGE = 'audio_storage';
  static const IS_UPDATING = 'is_updating';
  static const PLAYER_VERSION = 'player_version';
  static const COURSE_VERSION = 'course_version';
  static const NEED_UPDATE = 'need_update';
  static const HIDDEN = 'hidden';
  static const DEMO = 'demo';
  static const ANDROID_PRODUCT_ID = 'android_product_id';
  static const IOS_PRODUCT_ID = 'ios_product_id';
  static const AD_MOB_BANNER_UNIT_ID_ANDROID = 'ad_mob_banner_unit_id_android';
  static const AD_MOB_BANNER_UNIT_ID_IOS = 'ad_mob_banner_unit_id_ios';

  TextColumn get id => text()();

  TextColumn get language => text()();

  TextColumn get level => text().nullable()();

  TextColumn get level_name => text()();

  TextColumn get title => text()();

  TextColumn get topic => text()();

  TextColumn get translation => text()();

  TextColumn get image => text().nullable()();

  TextColumn get description => text()();

  IntColumn get lessons_count => integer()();

  TextColumn get audio_storage => text()();

  BoolColumn get is_updating => boolean().withDefault(const Constant(false))();

  BoolColumn get need_update => boolean().withDefault(const Constant(false))();

  IntColumn get player_version => integer()();

  IntColumn get course_version => integer()();

  IntColumn get demo => integer().withDefault(const Constant(1000))();

  BoolColumn get hidden => boolean().withDefault(const Constant(false))();

  TextColumn get android_product_id => text().nullable()();

  TextColumn get ios_product_id => text().nullable()();

  TextColumn get ad_mob_banner_unit_id_android => text().nullable()();

  TextColumn get ad_mob_banner_unit_id_ios => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};

  static Map<String, dynamic> fillDefaults(Map<String, dynamic> data) {
    return data
      ..putIfAbsent(Courses.IS_UPDATING, () => false)
      ..putIfAbsent(Courses.NEED_UPDATE, () => false)
      ..putIfAbsent(Courses.DEMO, () => 1000)
      ..putIfAbsent(Courses.HIDDEN, () => false);
  }
}
