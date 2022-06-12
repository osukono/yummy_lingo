// import 'dart:async';
// import 'dart:developer';

// import 'package:audio_service/audio_service.dart';

// MediaControl playControl = const MediaControl(
//   androidIcon: 'drawable/ic_action_play_arrow',
//   label: 'Play',
//   action: MediaAction.play,
// );
// MediaControl pauseControl = const MediaControl(
//   androidIcon: 'drawable/ic_action_pause',
//   label: 'Pause',
//   action: MediaAction.pause,
// );
// MediaControl skipToNextControl = const MediaControl(
//   androidIcon: 'drawable/ic_action_skip_next',
//   label: 'Next',
//   action: MediaAction.skipToNext,
// );
// MediaControl skipToPreviousControl = const MediaControl(
//   androidIcon: 'drawable/ic_action_skip_previous',
//   label: 'Previous',
//   action: MediaAction.skipToPrevious,
// );

// class AudioPlayerTask extends BackgroundAudioTask {
//   bool playing = false;

//   @override
//   Future<void> onStart(Map<String, dynamic>? params) async {}

//   @override
//   Future<void> onSkipToNext() async {
//     _setState(state: AudioProcessingState.skippingToNext, playing: false);
//   }

//   @override
//   Future<void> onSkipToPrevious() async {
//     _setState(state: AudioProcessingState.skippingToPrevious, playing: false);
//   }

//   @override
//   Future<void> onPlay() async {
//     playing = true;
//     _setState(state: AudioProcessingState.none);
//   }

//   @override
//   Future<void> onAddQueueItem(MediaItem mediaItem) async {
//     AudioServiceBackground.setMediaItem(mediaItem);
//     onPlay();
//   }

//   @override
//   Future<void> onPause() async {
//     playing = false;
//     _setState(state: AudioProcessingState.stopped);
//   }

//   @override
//   Future<void> onStop() async {
//     log('onStop');
//     playing = false;

//     _setState(state: AudioProcessingState.stopped);

//     await super.onStop();
//   }

//   void _setState({required AudioProcessingState state, bool? playing}) {
//     AudioServiceBackground.setState(
//       controls: getControls(),
//       systemActions: [],
//       processingState: state,
//       position: Duration.zero,
//       playing: playing ?? this.playing,
//     );
//   }

//   List<MediaControl> getControls() {
//     return [
//       skipToPreviousControl,
//       playing ? pauseControl : playControl,
//       skipToNextControl
//     ];
//   }
// }
