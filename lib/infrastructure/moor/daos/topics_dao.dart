import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/models/topics.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

part 'topics_dao.g.dart';

@UseDao(tables: [Topics])
class TopicsDao extends DatabaseAccessor<MoorDB> with _$TopicsDaoMixin {
  TopicsDao(db) : super(db);

  Future insert_(Insertable<Topic> data) => into(topics).insert(data);

  Future update_(Insertable<Topic> data) => update(topics).replace(data);

  Future delete_(Insertable<Topic> data) => delete(topics).delete(data);

  Future deleteAll() => topics.delete().go();
}
