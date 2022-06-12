part of 'my_course_bloc.dart';

@freezed
class MyCourseState with _$MyCourseState {
  const factory MyCourseState({
    required bool downloaded,
    required JobState updatingState,
    required List<Lesson> lessons,
    required bool pop,
  }) = _MyCourseState;

  factory MyCourseState.initial() => const MyCourseState(
        downloaded: false,
        updatingState: JobState.none,
        lessons: [],
        pop: false,
      );
}
