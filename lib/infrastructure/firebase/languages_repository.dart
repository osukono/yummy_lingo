import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/config.dart';
import 'package:yummy_lingo/infrastructure/moor/models/languages.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';
import 'package:yummy_lingo/injection.dart';

class LanguagesRepository {
  static const LANGUAGES = 'languages';

  static final CollectionReference<Map<String, dynamic>> _reference =
      FirebaseFirestore.instance.collection(LANGUAGES);

  final MoorDB _db;

  LanguagesRepository._(this._db);

  static final LanguagesRepository get = LanguagesRepository._(getIt<MoorDB>());

  Future<void> load() async {
    if (!await isUpdateAvailable()) {
      return;
    }

    final List<DocumentSnapshot<Map<String, dynamic>>> documents =
        (await _reference.get()).docs;

    await _db.languagesDao.deleteAll();
    await _db.translationsDao.deleteAll();

    for (DocumentSnapshot<Map<String, dynamic>> doc in documents) {
      await _db.languagesDao.insert_(Language.fromJson(Languages.fillDefaults(
          doc.data()!..putIfAbsent('id', () => doc.id))));

      final List<dynamic>? translations = doc.data()![Languages.TRANSLATIONS];

      if (translations != null) {
        for (String translation in translations) {
          _db.translationsDao.insert_(TranslationsCompanion(
              language: Value(doc.id), translation: Value(translation)));
        }
      }
    }

    await setUpdated();
  }

  Future<bool> isUpdateAvailable() async {
    final int clientVersion =
        await Preferences.get.getInt(Preferences.CLIENT_LANGUAGES_VERSION);
    final int serverVersion =
        await Preferences.get.getInt(Config.SERVER_LANGUAGES_VERSION);

    return clientVersion < serverVersion;
  }

  Future<void> setUpdated() async {
    final serverVersion =
        await Preferences.get.getInt(Config.SERVER_LANGUAGES_VERSION);
    await Preferences.get
        .setInt(Preferences.CLIENT_LANGUAGES_VERSION, serverVersion);
  }
}
