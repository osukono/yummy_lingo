import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/models/languages.dart';
import 'package:yummy_lingo/infrastructure/moor/models/translations.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

part 'translations_dao.g.dart';

@UseDao(tables: [Languages, Translations])
class TranslationsDao extends DatabaseAccessor<MoorDB>
    with _$TranslationsDaoMixin {
  TranslationsDao(db) : super(db);

  Future<List<TranslationEntry>> getTranslationsForLanguage(String language) {
    final lang = alias(languages, 'l');
    final trans = alias(languages, 't');

    final query = translations.select()
      ..where((t) => t.language.equals(language));

    final joins = query.join(
      [
        leftOuterJoin(lang, lang.id.equalsExp(translations.language)),
        leftOuterJoin(trans, trans.id.equalsExp(translations.translation)),
      ],
    )..orderBy([OrderingTerm(expression: trans.name)]);

    return joins
        .map((row) => TranslationEntry(
            language: row.readTable(lang), translation: row.readTable(trans)))
        .get();
  }

  Future insert_(Insertable<Translation> data) =>
      into(translations).insert(data);

  Future update_(Insertable<Translation> data) =>
      update(translations).replace(data);

  Future delete_(Insertable<Translation> data) =>
      delete(translations).delete(data);

  Future deleteAll() => translations.delete().go();
}

class TranslationEntry {
  Language language;
  Language translation;

  TranslationEntry({
    required this.language,
    required this.translation,
  });
}
