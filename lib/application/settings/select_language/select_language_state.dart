part of 'select_language_bloc.dart';

@freezed
class SelectLanguageState with _$SelectLanguageState {
  const factory SelectLanguageState.loading() = Loading;
  const factory SelectLanguageState.error() = LoadingError;
  const factory SelectLanguageState({
    required String language,
    required String translation,
  }) = Data;
}
