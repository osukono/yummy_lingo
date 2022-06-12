part of 'download_media_bloc.dart';

@freezed
class DownloadMediaEvent with _$DownloadMediaEvent {
  const factory DownloadMediaEvent.downloadCourse({required Course course}) =
      _DownloadCourseEvent;
  const factory DownloadMediaEvent.downloadExercises({
    required Course course,
    required List<ExerciseContent> exercises,
  }) = _DownloadExercisesEvent;
  const factory DownloadMediaEvent.download() = _DownloadEvent;
  const factory DownloadMediaEvent.cancel() = _CancelEvent;
  const factory DownloadMediaEvent.progressChanged() = _ProgressChangedEvent;
  const factory DownloadMediaEvent.error() = _ErrorEvent;
  const factory DownloadMediaEvent.connectivityChanged({
    required ConnectivityResult result,
  }) = _ConnectivityChangedEvent;
  const factory DownloadMediaEvent.storageError() = _StorageErrorEvent;
}
