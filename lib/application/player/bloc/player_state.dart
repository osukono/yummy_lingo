part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = PlayerInitial;

  const factory PlayerState({
    required Course course,
    required Language language,
    required String level,
    required Lesson lesson,
    required String part,
    required String session_id,
    required List<ScreenData> screen,
    required bool backwardEnabled,
    required bool forwardEnabled,
    required double volume,
    required String speed,
    required PlayerAction action,
    required double progress,
    required Duration total,
    required Duration remain,
  }) = PlayerData;
}
