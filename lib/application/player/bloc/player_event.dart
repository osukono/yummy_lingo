part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.load({
    required String course,
    required String? firebaseId,
    required CurrentLesson lesson,
  }) = _PlayerLoadEvent;

  const factory PlayerEvent.mediaDownloaded({
    required String course,
    required CurrentLesson lesson,
  }) = _PlayerMediaDownloadedEvent;

  const factory PlayerEvent.mediaFailed({
    required String course,
    required CurrentLesson lesson,
  }) = _PlayerMediaFailedEvent;

  const factory PlayerEvent.volumeChanged({
    required double volume,
  }) = _PlayerVolumeChangedEvent;

  const factory PlayerEvent.duck() = _PlayerDuckEvent;

  const factory PlayerEvent.unduck() = _PlayerUnduckEvent;

  const factory PlayerEvent.changeSpeedPressed() =
      _PlayerChangeSpeedPressedEvent;

  const factory PlayerEvent.controlButtonPressed() =
      _PlayerControlButtonPressedEvent;

  const factory PlayerEvent.backwardPressed() = _PlayerBackwardPressedEvent;

  const factory PlayerEvent.forwardPressed() = _PlayerForwardPressedEvent;

  const factory PlayerEvent.next({required String session_id}) =
      _PlayerNextEvent;

  const factory PlayerEvent.audioCompleted({required String session_id}) =
      _PlayerAudioCompletedEvent;

  const factory PlayerEvent.visibilityChanged({
    required bool visible,
  }) = _PlayerVisibilityChangedEvent;

  const factory PlayerEvent.pause() = _PlayerPauseEvent;

  const factory PlayerEvent.resume() = _PlayerResumeEvent;

  const factory PlayerEvent.stop() = _PlayerStopEvent;

  const factory PlayerEvent.reset() = _PlayerResetEvent;

  const factory PlayerEvent.resetIfCurrent({
    required String course,
  }) = _PlayerResetIfCurrent;
}
