part of 'puzzle_bloc.dart';

@freezed
class PuzzleEvent with _$PuzzleEvent {
  const factory PuzzleEvent.load({
    required List<Chunk> chunks,
  }) = _PuzzleLoadEvent;

  const factory PuzzleEvent.chunkPressed({
    required Chunk chunk,
  }) = _PuzzleChunkPressedEvent;
}
