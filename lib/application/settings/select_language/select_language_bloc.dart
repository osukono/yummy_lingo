import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/infrastructure/preferences.dart';

part 'select_language_bloc.freezed.dart';
part 'select_language_event.dart';
part 'select_language_state.dart';

class SelectLanguageBloc
    extends Bloc<SelectLanguageEvent, SelectLanguageState> {
  SelectLanguageBloc() : super(const SelectLanguageState.loading()) {
    on<_LoadDataEvent>(_onLoadData);
  }

  Future<void> _onLoadData(
    _LoadDataEvent event,
    Emitter<SelectLanguageState> emit,
  ) async {
    final String? language =
        await Preferences.get.getString(Preferences.LANGUAGE_LEARN_ID);
    final String? translation =
        await Preferences.get.getString(Preferences.LANGUAGE_SPEAK_ID);

    if (language == null || translation == null) {
      debugPrint(
          'Unable to init Select Language dialog: language=$language, translation=$translation');
      return emit(const SelectLanguageState.error());
    }

    emit(SelectLanguageState(
      language: language,
      translation: translation,
    ));
  }
}
