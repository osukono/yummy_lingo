import 'package:freezed_annotation/freezed_annotation.dart';

part 'downloading_failure.freezed.dart';

@freezed
class DownloadingFailure with _$DownloadingFailure {
  const factory DownloadingFailure.noInternet() = NoInternet;

  const factory DownloadingFailure.storageError() = StorageError;
}
