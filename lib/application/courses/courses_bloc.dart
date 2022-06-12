import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/extensions.dart';
import 'package:yummy_lingo/infrastructure/firebase/users_repository.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/languages_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';
import 'package:yummy_lingo/injection.dart';

part 'courses_bloc.freezed.dart';
part 'courses_event.dart';
part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  late List<Language> languages;

  CoursesBloc() : super(const CoursesState.loading()) {
    on<_LoadDataEvent>(_onLoadData);
  }

  Future<void> _onLoadData(
    _LoadDataEvent event,
    Emitter<CoursesState> emit,
  ) async {
    final db = getIt<MoorDB>();
    languages = await db.languagesDao.getAll();

    String languageId =
        (await Preferences.get.getString(Preferences.LANGUAGE_LEARN_ID))!;
    String translationId =
        (await Preferences.get.getString(Preferences.LANGUAGE_SPEAK_ID))!;

    Language? language = _getLanguage(languageId);
    Language? translation = _getLanguage(translationId);

    if (language == null) {
      final List<Language> languagesForLearn =
          await db.languagesDao.getCourseLanguages();
      languageId = languagesForLearn[0].id;
      Preferences.get.setString(Preferences.LANGUAGE_LEARN_ID, languageId);
      UsersRepository.get.updateILearn(languageId);
      language = _getLanguage(languageId);
    }

    if (translation == null) {
      final List<LanguageWithTranslation> languagesForSpeak =
          await db.languagesDao.getLanguagesWithTranslation(languageId);
      translationId = languagesForSpeak[0].language.id;
      Preferences.get.setString(Preferences.LANGUAGE_SPEAK_ID, translationId);
      UsersRepository.get.updateISpeak(translationId);
      translation = _getLanguage(translationId);
    }

    final bool tutorialShowed = await Preferences.get
        .getBool(Preferences.TUTORIAL_COURSES_SHOWED, def: false);
    if (!tutorialShowed)
      Preferences.get.setBool(Preferences.TUTORIAL_COURSES_SHOWED, true);

    emit(CoursesState(
      tutorial: !tutorialShowed,
      language: language!,
      translation: translation!,
    ));
  }

  Language? _getLanguage(String id) {
    return languages.firstWhereOrNull((element) => element.id == id);
  }
}
