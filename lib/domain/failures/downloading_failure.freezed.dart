// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloading_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadingFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function() storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function()? storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function()? storageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(StorageError value) storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoInternet value)? noInternet,
    TResult Function(StorageError value)? storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternet value)? noInternet,
    TResult Function(StorageError value)? storageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadingFailureCopyWith<$Res> {
  factory $DownloadingFailureCopyWith(
          DownloadingFailure value, $Res Function(DownloadingFailure) then) =
      _$DownloadingFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadingFailureCopyWithImpl<$Res>
    implements $DownloadingFailureCopyWith<$Res> {
  _$DownloadingFailureCopyWithImpl(this._value, this._then);

  final DownloadingFailure _value;
  // ignore: unused_field
  final $Res Function(DownloadingFailure) _then;
}

/// @nodoc
abstract class _$$NoInternetCopyWith<$Res> {
  factory _$$NoInternetCopyWith(
          _$NoInternet value, $Res Function(_$NoInternet) then) =
      __$$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetCopyWithImpl<$Res>
    extends _$DownloadingFailureCopyWithImpl<$Res>
    implements _$$NoInternetCopyWith<$Res> {
  __$$NoInternetCopyWithImpl(
      _$NoInternet _value, $Res Function(_$NoInternet) _then)
      : super(_value, (v) => _then(v as _$NoInternet));

  @override
  _$NoInternet get _value => super._value as _$NoInternet;
}

/// @nodoc

class _$NoInternet implements NoInternet {
  const _$NoInternet();

  @override
  String toString() {
    return 'DownloadingFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function() storageError,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function()? storageError,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(StorageError value) storageError,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoInternet value)? noInternet,
    TResult Function(StorageError value)? storageError,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternet value)? noInternet,
    TResult Function(StorageError value)? storageError,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements DownloadingFailure {
  const factory NoInternet() = _$NoInternet;
}

/// @nodoc
abstract class _$$StorageErrorCopyWith<$Res> {
  factory _$$StorageErrorCopyWith(
          _$StorageError value, $Res Function(_$StorageError) then) =
      __$$StorageErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageErrorCopyWithImpl<$Res>
    extends _$DownloadingFailureCopyWithImpl<$Res>
    implements _$$StorageErrorCopyWith<$Res> {
  __$$StorageErrorCopyWithImpl(
      _$StorageError _value, $Res Function(_$StorageError) _then)
      : super(_value, (v) => _then(v as _$StorageError));

  @override
  _$StorageError get _value => super._value as _$StorageError;
}

/// @nodoc

class _$StorageError implements StorageError {
  const _$StorageError();

  @override
  String toString() {
    return 'DownloadingFailure.storageError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StorageError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternet,
    required TResult Function() storageError,
  }) {
    return storageError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function()? storageError,
  }) {
    return storageError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternet,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (storageError != null) {
      return storageError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(StorageError value) storageError,
  }) {
    return storageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoInternet value)? noInternet,
    TResult Function(StorageError value)? storageError,
  }) {
    return storageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternet value)? noInternet,
    TResult Function(StorageError value)? storageError,
    required TResult orElse(),
  }) {
    if (storageError != null) {
      return storageError(this);
    }
    return orElse();
  }
}

abstract class StorageError implements DownloadingFailure {
  const factory StorageError() = _$StorageError;
}
