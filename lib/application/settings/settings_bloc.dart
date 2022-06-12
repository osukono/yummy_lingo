import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/infrastructure/firebase/users_repository.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/translations_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';
import 'package:yummy_lingo/injection.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  late List<Language> languages;
  late List<Language> courseLanguages;
  late List<TranslationEntry> translations;

  final _db = getIt<MoorDB>();

  SettingsBloc() : super(const SettingsState.loading()) {
    on<_LoadDataEvent>(_onLoadData);
    on<_LanguageChangedEvent>(_onLanguageChanged);
    on<_TranslationChangedEvent>(_onTranslationChanged);
  }

  Future<void> _onLanguageChanged(
    _LanguageChangedEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await Preferences.get
        .setString(Preferences.LANGUAGE_LEARN_ID, event.language.id);
    UsersRepository.get.updateILearn(event.language.id);

    translations = await getIt<MoorDB>()
        .translationsDao
        .getTranslationsForLanguage(event.language.id);

    final Language translation = translations[0].translation;

    await Preferences.get
        .setString(Preferences.LANGUAGE_SPEAK_ID, translation.id);
    UsersRepository.get.updateISpeak(translation.id);

    emit((state as Data).copyWith(
      language: event.language,
      translation: translation,
    ));
  }

  Future<void> _onTranslationChanged(
    _TranslationChangedEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await Preferences.get
        .setString(Preferences.LANGUAGE_SPEAK_ID, event.translation.id);
    UsersRepository.get.updateISpeak(event.translation.id);

    emit((state as Data).copyWith(
      translation: event.translation,
    ));
  }

  Future<void> _onLoadData(
    _LoadDataEvent event,
    Emitter<SettingsState> emit,
  ) async {
    languages = await _db.languagesDao.getAll();
    courseLanguages = await _db.languagesDao.getCourseLanguages();

    String language;
    String translation;

    final String? savedLanguage =
        await Preferences.get.getString(Preferences.LANGUAGE_LEARN_ID);
    final String? savedTranslation =
        await Preferences.get.getString(Preferences.LANGUAGE_SPEAK_ID);

    language = savedLanguage ?? courseLanguages[0].id;

    translations =
        await _db.translationsDao.getTranslationsForLanguage(language);

    if (savedLanguage == null) {
      translation = translations[0].translation.id;
    } else {
      translation = savedTranslation ?? translations[0].translation.id;
    }

    final bool initial = savedLanguage == null || savedTranslation == null;

    if (initial) {
      await Preferences.get.setString(Preferences.LANGUAGE_LEARN_ID, language);
      UsersRepository.get.updateILearn(language);

      await Preferences.get
          .setString(Preferences.LANGUAGE_SPEAK_ID, translation);
      UsersRepository.get.updateISpeak(translation);
    }

    emit(SettingsState(
      language: getLanguage(language),
      translation: getLanguage(translation),
      initial: initial,
    ));
  }

  Language getLanguage(String id) {
    return languages.firstWhere((language) => language.id == id);
  }
}
