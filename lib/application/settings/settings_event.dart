part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadData() = _LoadDataEvent;
  const factory SettingsEvent.languageChanged({
    required Language language,
  }) = _LanguageChangedEvent;
  const factory SettingsEvent.translationChanged({
    required Language translation,
  }) = _TranslationChangedEvent;
}
