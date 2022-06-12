import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/courses_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/exercise_contents_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/exercises_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/languages_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/lessons_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/my_courses_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/topics_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/translations_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/models/courses.dart';
import 'package:yummy_lingo/infrastructure/moor/models/exercise_contents.dart';
import 'package:yummy_lingo/infrastructure/moor/models/exercises.dart';
import 'package:yummy_lingo/infrastructure/moor/models/languages.dart';
import 'package:yummy_lingo/infrastructure/moor/models/lessons.dart';
import 'package:yummy_lingo/infrastructure/moor/models/my_courses.dart';
import 'package:yummy_lingo/infrastructure/moor/models/topics.dart';
import 'package:yummy_lingo/infrastructure/moor/models/translations.dart';

part 'moor_database.g.dart';

@UseMoor(
  tables: [
    Languages,
    MyCourses,
    Courses,
    Topics,
    Lessons,
    Exercises,
    ExerciseContents,
    Translations,
  ],
  daos: [
    LanguagesDao,
    MyCoursesDao,
    CoursesDao,
    TopicsDao,
    LessonsDao,
    ExercisesDao,
    ExerciseContentsDao,
    TranslationsDao,
  ],
)
@singleton
class MoorDB extends _$MoorDB {
  MoorDB()
      : super(FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: false,
        ));

  @override
  int get schemaVersion => 11;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        // Runs if the database has already been opened on the device with a lower version
        onUpgrade: (Migrator migrator, int from, int to) async {
          if (from <= 3) {
            await migrator.renameTable(courses, 'course');
            await migrator.renameTable(exercises, 'exercise');
            await migrator.renameTable(exerciseContents, 'exercise_content');
            await migrator.renameTable(languages, 'language');
            await migrator.renameTable(lessons, 'lesson');
            await migrator.renameTable(myCourses, 'my_course');
            await migrator.renameTable(topics, 'topic');
            await migrator.renameTable(translations, 'translation');
          }
          if (from <= 4) {
            await migrator.addColumn(lessons, lessons.description);
          }
          if (from <= 5) {
            await migrator.addColumn(
                exerciseContents, exerciseContents.c_extra_chunks);
            await migrator.addColumn(
                exerciseContents, exerciseContents.c_capitalized_words);
          }
          if (from <= 6) {
            await migrator.addColumn(
                exerciseContents, exerciseContents.c_chunks);

            await migrator.addColumn(
                exerciseContents, exerciseContents.c_linear_audio);
            await migrator.addColumn(
                exerciseContents, exerciseContents.c_linear_duration);
            await migrator.addColumn(
                exerciseContents, exerciseContents.t_linear_audio);
            await migrator.addColumn(
                exerciseContents, exerciseContents.t_linear_duration);
          }
          if (from <= 7) {
            await migrator.addColumn(
                courses, courses.ad_mob_banner_unit_id_android);
            await migrator.addColumn(
                courses, courses.ad_mob_banner_unit_id_ios);
          }
          if (from <= 8) {
            await migrator.addColumn(myCourses, myCourses.validated);
          }
          if (from <= 9) {
            await migrator.alterTable(TableMigration(courses));
            await migrator.alterTable(TableMigration(exerciseContents));
            await migrator.alterTable(TableMigration(myCourses));
          }
          if (from <= 10) {
            await migrator.deleteTable('localizations');
          }
        },
      );
}
