part of 'library_bloc.dart';

@freezed
class LibraryState with _$LibraryState {
  const factory LibraryState({
    required Map<String, JobProgress> jobs,
  }) = _LibraryState;

  factory LibraryState.initial() => const LibraryState(jobs: {});
}
