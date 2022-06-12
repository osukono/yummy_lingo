part of 'puzzle_bloc.dart';

@freezed
class PuzzleState with _$PuzzleState {
  const factory PuzzleState({
    required bool solved,
    required String text,
    required List<Chunk> chunks,
    required Option<Chunk> errorOption,
  }) = PuzzleDataState;

  const factory PuzzleState.initial() = _PuzzleInitialState;
}
