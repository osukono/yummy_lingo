import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_info.freezed.dart';

@freezed
class MediaInfo with _$MediaInfo {
  const factory MediaInfo({
    required String name,
    required String url,
  }) = _MediaInfo;
}
