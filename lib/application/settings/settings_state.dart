part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.loading() = Loading;
  const factory SettingsState({
    required Language language,
    required Language translation,
    required bool initial,
  }) = Data;
}
