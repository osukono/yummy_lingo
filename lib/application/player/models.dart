import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/application/player/puzzle/bloc/puzzle_bloc.dart';
import 'package:yummy_lingo/application/player/puzzle/chunks.dart';

part 'models.freezed.dart';

@freezed
class CurrentLesson with _$CurrentLesson {
  const factory CurrentLesson.part({
    required int order,
    required int part,
  }) = Part;

  const factory CurrentLesson.review({
    required int order,
  }) = Review;
}

@freezed
class Command with _$Command {
  const factory Command.dialog({
    required String text,
    required List<DialogOption> options,
    required bool interaction,
  }) = CommandDialog;

  const factory Command.transcript({
    required String text,
    required bool translation,
  }) = CommandTranscript;

  const factory Command.audio({
    required String audio,
    required int duration,
  }) = CommandAudio;

  const factory Command.pause({
    required int duration,
  }) = CommandPause;

  const factory Command.duration({
    required int duration,
  }) = CommandDuration;

  const factory Command.puzzle({
    required List<Chunk> chunks,
    String? audio,
  }) = CommandPuzzle;

  const factory Command.text({
    required String text,
  }) = CommandText;

  const factory Command.clear() = _CommandClear;

  const factory Command.reviewCompleted() = _CommandReviewCompleted;
  const factory Command.lessonCompleted() = _CommandLessonCompleted;
}

@freezed
class ScreenData with _$ScreenData {
  const factory ScreenData.transcript({
    required String text,
    required bool translation,
  }) = TranscriptData;

  const factory ScreenData.dialog({
    required String text,
    required List<DialogOption> options,
  }) = DialogData;

  const factory ScreenData.puzzle({
    required PuzzleBloc bloc,
    required List<Chunk> chunks,
    String? audio,
  }) = PuzzleData;

  const factory ScreenData.text({
    required String text,
    required List<DialogOption> options,
  }) = TextData;
}

@freezed
class DialogOption with _$DialogOption {
  const factory DialogOption.next() = DialogOptionNext;

  const factory DialogOption.start() = DialogOptionStart;

  const factory DialogOption.close() = DialogOptionClose;

  const factory DialogOption.forward() = DialogOptionForward;
}

class AudioSettings {
  int pause_after_exercise;
  double listening_rate;
  double practice_rate;

  AudioSettings({
    required this.pause_after_exercise,
    required this.listening_rate,
    required this.practice_rate,
  });
}
