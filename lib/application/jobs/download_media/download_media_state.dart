part of 'download_media_bloc.dart';

@freezed
class DownloadMediaState with _$DownloadMediaState {
  const factory DownloadMediaState({
    required int total,
    required int completed,
    required double progress,
    required JobState state,
    required ConnectivityState connectivityState,
    required Option<DownloadingFailure> failure,
  }) = _DownloadMediaData;

  factory DownloadMediaState.initial() => DownloadMediaState(
        total: 0,
        completed: 0,
        progress: 0,
        state: JobState.none,
        connectivityState: ConnectivityState.none,
        failure: none(),
      );
}
