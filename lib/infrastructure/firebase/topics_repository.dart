import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yummy_lingo/infrastructure/config.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';
import 'package:yummy_lingo/injection.dart';

class TopicsRepository {
  static const TOPICS = 'topics';

  static final CollectionReference<Topic> _reference =
      FirebaseFirestore.instance.collection(TOPICS).withConverter(
            fromFirestore: (snapshot, _) => Topic.fromJson(
                snapshot.data()!..putIfAbsent('id', () => snapshot.id)),
            toFirestore: (_, __) => {},
          );

  final MoorDB _db;

  TopicsRepository._(this._db);

  static final TopicsRepository get = TopicsRepository._(getIt<MoorDB>());

  Future<void> load() async {
    if (!await isUpdateAvailable()) {
      return;
    }

    final List<DocumentSnapshot<Topic>> documents =
        (await _reference.get()).docs;

    await _db.topicsDao.deleteAll();

    for (DocumentSnapshot<Topic> doc in documents) {
      await _db.topicsDao.insert_(doc.data()!);
    }

    await setUpdated();
  }

  Future<bool> isUpdateAvailable() async {
    final int clientVersion =
        await Preferences.get.getInt(Preferences.CLIENT_TOPICS_VERSION);
    final int serverVersion =
        await Preferences.get.getInt(Config.SERVER_TOPICS_VERSION);

    return clientVersion < serverVersion;
  }

  Future<void> setUpdated() async {
    final int serverVersion =
        await Preferences.get.getInt(Config.SERVER_TOPICS_VERSION);
    await Preferences.get
        .setInt(Preferences.CLIENT_TOPICS_VERSION, serverVersion);
  }
}
