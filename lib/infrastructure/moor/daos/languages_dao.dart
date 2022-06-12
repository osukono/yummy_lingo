import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/models/languages.dart';
import 'package:yummy_lingo/infrastructure/moor/models/translations.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

part 'languages_dao.g.dart';

@UseDao(tables: [Languages, Translations])
class LanguagesDao extends DatabaseAccessor<MoorDB> with _$LanguagesDaoMixin {
  LanguagesDao(db) : super(db);

  Future<Language> getById(String id) =>
      (languages.select()..where((t) => t.id.equals(id))).getSingle();

  Future<List<Language>> getCourseLanguages() => (languages.select()
        ..where((t) => t.course.equals(true))
        ..orderBy([
          (t) => OrderingTerm(expression: t.name),
        ]))
      .get();

  Stream<List<Language>> watchCourseLanguages() => (languages.select()
        ..where((t) => t.course.equals(true))
        ..orderBy([
          (t) => OrderingTerm(expression: t.name),
        ]))
      .watch();

  Future<List<Language>> getAll() => (languages.select()
        ..orderBy([
          (t) => OrderingTerm(expression: t.name),
        ]))
      .get();

  Stream<List<Language>> watchAll() => select(languages).watch();

  Future<List<LanguageWithTranslation>> getLanguagesWithTranslation(
      String language) async {
    final query = (translations.select()
          ..where((t) => t.language.equals(language))
          ..orderBy([
            (t) => OrderingTerm(expression: t.id),
          ]))
        .join([
      leftOuterJoin(
        languages,
        languages.id.equalsExp(translations.translation),
      )
    ]);
    final List<LanguageWithTranslation> result = [];
    // ignore: avoid_function_literals_in_foreach_calls
    (await query.get()).forEach((row) {
      result.add(LanguageWithTranslation(
        language: row.readTable(languages),
        translation: row.readTable(translations),
      ));
    });
    result.sort((a, b) => a.language.name.compareTo(b.language.name));
    return result;
  }

  Stream<List<LanguageWithTranslation>> watchLanguagesWithTranslation(
      String language) {
    final query = (translations.select()
          ..where((t) => t.language.equals(language))
          ..orderBy([
            (t) => OrderingTerm(expression: t.id),
          ]))
        .join([
      leftOuterJoin(
        languages,
        languages.id.equalsExp(translations.translation),
      )
    ]);
    return query.watch().map((rows) {
      final List<LanguageWithTranslation> list = rows.map((row) {
        return LanguageWithTranslation(
          language: row.readTable(languages),
          translation: row.readTable(translations),
        );
      }).toList();
      list.sort((a, b) => a.language.name.compareTo(b.language.name));
      return list;
    });
  }

  Future insert_(Insertable<Language> data) => into(languages).insert(data);

  Future update_(Insertable<Language> data) => update(languages).replace(data);

  Future delete_(Insertable<Language> data) => delete(languages).delete(data);

  Future deleteAll() => languages.delete().go();
}

class LanguageWithTranslation {
  final Language language;
  final Translation translation;

  LanguageWithTranslation({
    required this.language,
    required this.translation,
  });
}
