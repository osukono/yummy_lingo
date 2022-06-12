import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._();

  static const LANGUAGE_LEARN_ID = 'l_learn_id';
  static const LANGUAGE_SPEAK_ID = 'l_speak_id';

  static const VOLUME = 'volume';
  static const PLAYER_SPEED = 'current_speed';
  static const APP_LOCALE = 'current_locale';

  //config
  static const CLIENT_LANGUAGES_VERSION = 'client_languages_version';
  static const CLIENT_COURSES_VERSION = 'client_courses_version';
  static const CLIENT_TOPICS_VERSION = 'client_topics_version';
  static const CLIENT_LOCALIZATIONS_VERSION = 'client_localizations_version';

  //Tutorial
  static const TUTORIAL_SHOWED = 'tutorial_showed';
  static const TUTORIAL_COURSES_SHOWED = 'tutorial_courses_showed';

  static final Preferences get = Preferences._();

  Future<SharedPreferences> get _preferences => SharedPreferences.getInstance();

  Future<String?> getString(String key, {String? def}) async {
    return (await _preferences).getString(key) ?? def;
  }

  Future<void> setString(String key, String? value) async {
    if (value == null)
      await remove(key);
    else
      await (await _preferences).setString(key, value);
  }

  Future<bool> getBool(String key, {bool def = false}) async {
    return (await _preferences).getBool(key) ?? def;
  }

  Future<void> setBool(String key, bool value) async {
    await (await _preferences).setBool(key, value);
  }

  Future<int> getInt(String key, {int def = 0}) async {
    return (await _preferences).getInt(key) ?? def;
  }

  Future<void> setInt(String key, int value) async {
    await (await _preferences).setInt(key, value);
  }

  Future<double> getDouble(String key, {double def = 0.0}) async {
    return (await _preferences).getDouble(key) ?? def;
  }

  Future<void> setDouble(String key, double value) async {
    await (await _preferences).setDouble(key, value);
  }

  Future<void> remove(String key) async {
    await (await _preferences).remove(key);
  }

  Future<void> clear() async {
    await (await _preferences).clear();
  }
}
