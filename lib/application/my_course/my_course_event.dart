part of 'my_course_bloc.dart';

@freezed
class MyCourseEvent with _$MyCourseEvent {
  const factory MyCourseEvent.started() = _MyCourseStartedEvent;

  const factory MyCourseEvent.checkDownloaded() = _CheckDownloadedEvent;

  const factory MyCourseEvent.updateDownloaded({
    required bool downloaded,
  }) = _UpdateDownloadedEvent;

  const factory MyCourseEvent.resetProgress({
    required MyCourse myCourse,
  }) = _ResetProgressEvent;

  const factory MyCourseEvent.deleteMedia() = _DeleteMediaEvent;
}
