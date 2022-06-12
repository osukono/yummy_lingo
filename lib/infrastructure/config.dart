import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';

class Config {
  static const SERVER_TOPICS_VERSION = 'server_topics_version';
  static const SERVER_LANGUAGES_VERSION = 'server_languages_version';
  static const SERVER_COURSES_VERSION = 'server_courses_version';
  static const SERVER_LOCALIZATIONS_VERSION = 'server_localizations_version';

  static const SPEED_SLOWER = 'speed_slower';
  static const SPEED_NORMAL = 'speed_normal';
  static const SPEED_FASTER = 'speed_faster';

  final FirebaseRemoteConfig _config = FirebaseRemoteConfig.instance;

  Future<void> setup() async {
    await _config.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout:
            kReleaseMode ? const Duration(days: 1) : const Duration(minutes: 1),
        minimumFetchInterval: const Duration(minutes: 1),
      ),
    );

    await _config.setDefaults(<String, dynamic>{
      SERVER_LANGUAGES_VERSION: 1,
      SERVER_COURSES_VERSION: 1,
      SERVER_TOPICS_VERSION: 1,
      SERVER_LOCALIZATIONS_VERSION: 1,
      SPEED_SLOWER: 1.35,
      SPEED_NORMAL: 1,
      SPEED_FASTER: 0.65,
    });
    await _config.fetchAndActivate().catchError((_) => false);

    await _getInt(SERVER_LANGUAGES_VERSION);
    await _getInt(SERVER_COURSES_VERSION);
    await _getInt(SERVER_LOCALIZATIONS_VERSION);
    await _getInt(SERVER_TOPICS_VERSION);
    await _getDouble(SPEED_FASTER);
    await _getDouble(SPEED_NORMAL);
    await _getDouble(SPEED_SLOWER);
  }

  Future<void> _getInt(String key) async {
    await Preferences.get.setInt(key, _config.getInt(key));
  }

  Future<void> _getDouble(String key) async {
    await Preferences.get.setDouble(key, _config.getDouble(key));
  }
}
