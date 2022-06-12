part of 'courses_bloc.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState.loading() = Loading;
  const factory CoursesState({
    required bool tutorial,
    required Language language,
    required Language translation,
  }) = Data;
}
