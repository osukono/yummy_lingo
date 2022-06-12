part of 'library_bloc.dart';

@freezed
class LibraryEvent with _$LibraryEvent {
  const factory LibraryEvent.load() = _LoadLibraryEvent;
  const factory LibraryEvent.clear() = _ClearLibraryEvent;

  const factory LibraryEvent.addCourse({
    required String course,
    @Default(true) bool updateLastListened,
  }) = _AddCourseEvent;
  const factory LibraryEvent.updateCourse({
    required String course,
    @Default(true) bool updateLastListened,
  }) = _UpdateCourseEvent;
  const factory LibraryEvent.removeCourse({required String course}) =
      _RemoveCourseEvent;
  const factory LibraryEvent.cancelJob({required String course}) =
      _CancelJobEvent;
}
