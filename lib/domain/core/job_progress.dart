import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yummy_lingo/domain/enums.dart';

part 'job_progress.freezed.dart';

@freezed
class JobProgress with _$JobProgress {
  factory JobProgress({
    required JobState state,
    required double progress,
  }) = _JobProgress;
}
