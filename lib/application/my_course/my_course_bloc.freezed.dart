// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkDownloaded,
    required TResult Function(bool downloaded) updateDownloaded,
    required TResult Function(MyCourse myCourse) resetProgress,
    required TResult Function() deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyCourseStartedEvent value) started,
    required TResult Function(_CheckDownloadedEvent value) checkDownloaded,
    required TResult Function(_UpdateDownloadedEvent value) updateDownloaded,
    required TResult Function(_ResetProgressEvent value) resetProgress,
    required TResult Function(_DeleteMediaEvent value) deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCourseEventCopyWith<$Res> {
  factory $MyCourseEventCopyWith(
          MyCourseEvent value, $Res Function(MyCourseEvent) then) =
      _$MyCourseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyCourseEventCopyWithImpl<$Res>
    implements $MyCourseEventCopyWith<$Res> {
  _$MyCourseEventCopyWithImpl(this._value, this._then);

  final MyCourseEvent _value;
  // ignore: unused_field
  final $Res Function(MyCourseEvent) _then;
}

/// @nodoc
abstract class _$$_MyCourseStartedEventCopyWith<$Res> {
  factory _$$_MyCourseStartedEventCopyWith(_$_MyCourseStartedEvent value,
          $Res Function(_$_MyCourseStartedEvent) then) =
      __$$_MyCourseStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MyCourseStartedEventCopyWithImpl<$Res>
    extends _$MyCourseEventCopyWithImpl<$Res>
    implements _$$_MyCourseStartedEventCopyWith<$Res> {
  __$$_MyCourseStartedEventCopyWithImpl(_$_MyCourseStartedEvent _value,
      $Res Function(_$_MyCourseStartedEvent) _then)
      : super(_value, (v) => _then(v as _$_MyCourseStartedEvent));

  @override
  _$_MyCourseStartedEvent get _value => super._value as _$_MyCourseStartedEvent;
}

/// @nodoc

class _$_MyCourseStartedEvent
    with DiagnosticableTreeMixin
    implements _MyCourseStartedEvent {
  const _$_MyCourseStartedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCourseEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyCourseEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MyCourseStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkDownloaded,
    required TResult Function(bool downloaded) updateDownloaded,
    required TResult Function(MyCourse myCourse) resetProgress,
    required TResult Function() deleteMedia,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyCourseStartedEvent value) started,
    required TResult Function(_CheckDownloadedEvent value) checkDownloaded,
    required TResult Function(_UpdateDownloadedEvent value) updateDownloaded,
    required TResult Function(_ResetProgressEvent value) resetProgress,
    required TResult Function(_DeleteMediaEvent value) deleteMedia,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _MyCourseStartedEvent implements MyCourseEvent {
  const factory _MyCourseStartedEvent() = _$_MyCourseStartedEvent;
}

/// @nodoc
abstract class _$$_CheckDownloadedEventCopyWith<$Res> {
  factory _$$_CheckDownloadedEventCopyWith(_$_CheckDownloadedEvent value,
          $Res Function(_$_CheckDownloadedEvent) then) =
      __$$_CheckDownloadedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckDownloadedEventCopyWithImpl<$Res>
    extends _$MyCourseEventCopyWithImpl<$Res>
    implements _$$_CheckDownloadedEventCopyWith<$Res> {
  __$$_CheckDownloadedEventCopyWithImpl(_$_CheckDownloadedEvent _value,
      $Res Function(_$_CheckDownloadedEvent) _then)
      : super(_value, (v) => _then(v as _$_CheckDownloadedEvent));

  @override
  _$_CheckDownloadedEvent get _value => super._value as _$_CheckDownloadedEvent;
}

/// @nodoc

class _$_CheckDownloadedEvent
    with DiagnosticableTreeMixin
    implements _CheckDownloadedEvent {
  const _$_CheckDownloadedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCourseEvent.checkDownloaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MyCourseEvent.checkDownloaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckDownloadedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkDownloaded,
    required TResult Function(bool downloaded) updateDownloaded,
    required TResult Function(MyCourse myCourse) resetProgress,
    required TResult Function() deleteMedia,
  }) {
    return checkDownloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
  }) {
    return checkDownloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (checkDownloaded != null) {
      return checkDownloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyCourseStartedEvent value) started,
    required TResult Function(_CheckDownloadedEvent value) checkDownloaded,
    required TResult Function(_UpdateDownloadedEvent value) updateDownloaded,
    required TResult Function(_ResetProgressEvent value) resetProgress,
    required TResult Function(_DeleteMediaEvent value) deleteMedia,
  }) {
    return checkDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
  }) {
    return checkDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (checkDownloaded != null) {
      return checkDownloaded(this);
    }
    return orElse();
  }
}

abstract class _CheckDownloadedEvent implements MyCourseEvent {
  const factory _CheckDownloadedEvent() = _$_CheckDownloadedEvent;
}

/// @nodoc
abstract class _$$_UpdateDownloadedEventCopyWith<$Res> {
  factory _$$_UpdateDownloadedEventCopyWith(_$_UpdateDownloadedEvent value,
          $Res Function(_$_UpdateDownloadedEvent) then) =
      __$$_UpdateDownloadedEventCopyWithImpl<$Res>;
  $Res call({bool downloaded});
}

/// @nodoc
class __$$_UpdateDownloadedEventCopyWithImpl<$Res>
    extends _$MyCourseEventCopyWithImpl<$Res>
    implements _$$_UpdateDownloadedEventCopyWith<$Res> {
  __$$_UpdateDownloadedEventCopyWithImpl(_$_UpdateDownloadedEvent _value,
      $Res Function(_$_UpdateDownloadedEvent) _then)
      : super(_value, (v) => _then(v as _$_UpdateDownloadedEvent));

  @override
  _$_UpdateDownloadedEvent get _value =>
      super._value as _$_UpdateDownloadedEvent;

  @override
  $Res call({
    Object? downloaded = freezed,
  }) {
    return _then(_$_UpdateDownloadedEvent(
      downloaded: downloaded == freezed
          ? _value.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateDownloadedEvent
    with DiagnosticableTreeMixin
    implements _UpdateDownloadedEvent {
  const _$_UpdateDownloadedEvent({required this.downloaded});

  @override
  final bool downloaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCourseEvent.updateDownloaded(downloaded: $downloaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyCourseEvent.updateDownloaded'))
      ..add(DiagnosticsProperty('downloaded', downloaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDownloadedEvent &&
            const DeepCollectionEquality()
                .equals(other.downloaded, downloaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(downloaded));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateDownloadedEventCopyWith<_$_UpdateDownloadedEvent> get copyWith =>
      __$$_UpdateDownloadedEventCopyWithImpl<_$_UpdateDownloadedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkDownloaded,
    required TResult Function(bool downloaded) updateDownloaded,
    required TResult Function(MyCourse myCourse) resetProgress,
    required TResult Function() deleteMedia,
  }) {
    return updateDownloaded(downloaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
  }) {
    return updateDownloaded?.call(downloaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (updateDownloaded != null) {
      return updateDownloaded(downloaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyCourseStartedEvent value) started,
    required TResult Function(_CheckDownloadedEvent value) checkDownloaded,
    required TResult Function(_UpdateDownloadedEvent value) updateDownloaded,
    required TResult Function(_ResetProgressEvent value) resetProgress,
    required TResult Function(_DeleteMediaEvent value) deleteMedia,
  }) {
    return updateDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
  }) {
    return updateDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (updateDownloaded != null) {
      return updateDownloaded(this);
    }
    return orElse();
  }
}

abstract class _UpdateDownloadedEvent implements MyCourseEvent {
  const factory _UpdateDownloadedEvent({required final bool downloaded}) =
      _$_UpdateDownloadedEvent;

  bool get downloaded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateDownloadedEventCopyWith<_$_UpdateDownloadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetProgressEventCopyWith<$Res> {
  factory _$$_ResetProgressEventCopyWith(_$_ResetProgressEvent value,
          $Res Function(_$_ResetProgressEvent) then) =
      __$$_ResetProgressEventCopyWithImpl<$Res>;
  $Res call({MyCourse myCourse});
}

/// @nodoc
class __$$_ResetProgressEventCopyWithImpl<$Res>
    extends _$MyCourseEventCopyWithImpl<$Res>
    implements _$$_ResetProgressEventCopyWith<$Res> {
  __$$_ResetProgressEventCopyWithImpl(
      _$_ResetProgressEvent _value, $Res Function(_$_ResetProgressEvent) _then)
      : super(_value, (v) => _then(v as _$_ResetProgressEvent));

  @override
  _$_ResetProgressEvent get _value => super._value as _$_ResetProgressEvent;

  @override
  $Res call({
    Object? myCourse = freezed,
  }) {
    return _then(_$_ResetProgressEvent(
      myCourse: myCourse == freezed
          ? _value.myCourse
          : myCourse // ignore: cast_nullable_to_non_nullable
              as MyCourse,
    ));
  }
}

/// @nodoc

class _$_ResetProgressEvent
    with DiagnosticableTreeMixin
    implements _ResetProgressEvent {
  const _$_ResetProgressEvent({required this.myCourse});

  @override
  final MyCourse myCourse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCourseEvent.resetProgress(myCourse: $myCourse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyCourseEvent.resetProgress'))
      ..add(DiagnosticsProperty('myCourse', myCourse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetProgressEvent &&
            const DeepCollectionEquality().equals(other.myCourse, myCourse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(myCourse));

  @JsonKey(ignore: true)
  @override
  _$$_ResetProgressEventCopyWith<_$_ResetProgressEvent> get copyWith =>
      __$$_ResetProgressEventCopyWithImpl<_$_ResetProgressEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkDownloaded,
    required TResult Function(bool downloaded) updateDownloaded,
    required TResult Function(MyCourse myCourse) resetProgress,
    required TResult Function() deleteMedia,
  }) {
    return resetProgress(myCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
  }) {
    return resetProgress?.call(myCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (resetProgress != null) {
      return resetProgress(myCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyCourseStartedEvent value) started,
    required TResult Function(_CheckDownloadedEvent value) checkDownloaded,
    required TResult Function(_UpdateDownloadedEvent value) updateDownloaded,
    required TResult Function(_ResetProgressEvent value) resetProgress,
    required TResult Function(_DeleteMediaEvent value) deleteMedia,
  }) {
    return resetProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
  }) {
    return resetProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (resetProgress != null) {
      return resetProgress(this);
    }
    return orElse();
  }
}

abstract class _ResetProgressEvent implements MyCourseEvent {
  const factory _ResetProgressEvent({required final MyCourse myCourse}) =
      _$_ResetProgressEvent;

  MyCourse get myCourse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResetProgressEventCopyWith<_$_ResetProgressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteMediaEventCopyWith<$Res> {
  factory _$$_DeleteMediaEventCopyWith(
          _$_DeleteMediaEvent value, $Res Function(_$_DeleteMediaEvent) then) =
      __$$_DeleteMediaEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteMediaEventCopyWithImpl<$Res>
    extends _$MyCourseEventCopyWithImpl<$Res>
    implements _$$_DeleteMediaEventCopyWith<$Res> {
  __$$_DeleteMediaEventCopyWithImpl(
      _$_DeleteMediaEvent _value, $Res Function(_$_DeleteMediaEvent) _then)
      : super(_value, (v) => _then(v as _$_DeleteMediaEvent));

  @override
  _$_DeleteMediaEvent get _value => super._value as _$_DeleteMediaEvent;
}

/// @nodoc

class _$_DeleteMediaEvent
    with DiagnosticableTreeMixin
    implements _DeleteMediaEvent {
  const _$_DeleteMediaEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCourseEvent.deleteMedia()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyCourseEvent.deleteMedia'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteMediaEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkDownloaded,
    required TResult Function(bool downloaded) updateDownloaded,
    required TResult Function(MyCourse myCourse) resetProgress,
    required TResult Function() deleteMedia,
  }) {
    return deleteMedia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
  }) {
    return deleteMedia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkDownloaded,
    TResult Function(bool downloaded)? updateDownloaded,
    TResult Function(MyCourse myCourse)? resetProgress,
    TResult Function()? deleteMedia,
    required TResult orElse(),
  }) {
    if (deleteMedia != null) {
      return deleteMedia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyCourseStartedEvent value) started,
    required TResult Function(_CheckDownloadedEvent value) checkDownloaded,
    required TResult Function(_UpdateDownloadedEvent value) updateDownloaded,
    required TResult Function(_ResetProgressEvent value) resetProgress,
    required TResult Function(_DeleteMediaEvent value) deleteMedia,
  }) {
    return deleteMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
  }) {
    return deleteMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyCourseStartedEvent value)? started,
    TResult Function(_CheckDownloadedEvent value)? checkDownloaded,
    TResult Function(_UpdateDownloadedEvent value)? updateDownloaded,
    TResult Function(_ResetProgressEvent value)? resetProgress,
    TResult Function(_DeleteMediaEvent value)? deleteMedia,
    required TResult orElse(),
  }) {
    if (deleteMedia != null) {
      return deleteMedia(this);
    }
    return orElse();
  }
}

abstract class _DeleteMediaEvent implements MyCourseEvent {
  const factory _DeleteMediaEvent() = _$_DeleteMediaEvent;
}

/// @nodoc
mixin _$MyCourseState {
  bool get downloaded => throw _privateConstructorUsedError;
  JobState get updatingState => throw _privateConstructorUsedError;
  List<Lesson> get lessons => throw _privateConstructorUsedError;
  bool get pop => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyCourseStateCopyWith<MyCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCourseStateCopyWith<$Res> {
  factory $MyCourseStateCopyWith(
          MyCourseState value, $Res Function(MyCourseState) then) =
      _$MyCourseStateCopyWithImpl<$Res>;
  $Res call(
      {bool downloaded,
      JobState updatingState,
      List<Lesson> lessons,
      bool pop});
}

/// @nodoc
class _$MyCourseStateCopyWithImpl<$Res>
    implements $MyCourseStateCopyWith<$Res> {
  _$MyCourseStateCopyWithImpl(this._value, this._then);

  final MyCourseState _value;
  // ignore: unused_field
  final $Res Function(MyCourseState) _then;

  @override
  $Res call({
    Object? downloaded = freezed,
    Object? updatingState = freezed,
    Object? lessons = freezed,
    Object? pop = freezed,
  }) {
    return _then(_value.copyWith(
      downloaded: downloaded == freezed
          ? _value.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      updatingState: updatingState == freezed
          ? _value.updatingState
          : updatingState // ignore: cast_nullable_to_non_nullable
              as JobState,
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MyCourseStateCopyWith<$Res>
    implements $MyCourseStateCopyWith<$Res> {
  factory _$$_MyCourseStateCopyWith(
          _$_MyCourseState value, $Res Function(_$_MyCourseState) then) =
      __$$_MyCourseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool downloaded,
      JobState updatingState,
      List<Lesson> lessons,
      bool pop});
}

/// @nodoc
class __$$_MyCourseStateCopyWithImpl<$Res>
    extends _$MyCourseStateCopyWithImpl<$Res>
    implements _$$_MyCourseStateCopyWith<$Res> {
  __$$_MyCourseStateCopyWithImpl(
      _$_MyCourseState _value, $Res Function(_$_MyCourseState) _then)
      : super(_value, (v) => _then(v as _$_MyCourseState));

  @override
  _$_MyCourseState get _value => super._value as _$_MyCourseState;

  @override
  $Res call({
    Object? downloaded = freezed,
    Object? updatingState = freezed,
    Object? lessons = freezed,
    Object? pop = freezed,
  }) {
    return _then(_$_MyCourseState(
      downloaded: downloaded == freezed
          ? _value.downloaded
          : downloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      updatingState: updatingState == freezed
          ? _value.updatingState
          : updatingState // ignore: cast_nullable_to_non_nullable
              as JobState,
      lessons: lessons == freezed
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<Lesson>,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MyCourseState with DiagnosticableTreeMixin implements _MyCourseState {
  const _$_MyCourseState(
      {required this.downloaded,
      required this.updatingState,
      required final List<Lesson> lessons,
      required this.pop})
      : _lessons = lessons;

  @override
  final bool downloaded;
  @override
  final JobState updatingState;
  final List<Lesson> _lessons;
  @override
  List<Lesson> get lessons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  final bool pop;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyCourseState(downloaded: $downloaded, updatingState: $updatingState, lessons: $lessons, pop: $pop)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyCourseState'))
      ..add(DiagnosticsProperty('downloaded', downloaded))
      ..add(DiagnosticsProperty('updatingState', updatingState))
      ..add(DiagnosticsProperty('lessons', lessons))
      ..add(DiagnosticsProperty('pop', pop));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyCourseState &&
            const DeepCollectionEquality()
                .equals(other.downloaded, downloaded) &&
            const DeepCollectionEquality()
                .equals(other.updatingState, updatingState) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons) &&
            const DeepCollectionEquality().equals(other.pop, pop));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(downloaded),
      const DeepCollectionEquality().hash(updatingState),
      const DeepCollectionEquality().hash(_lessons),
      const DeepCollectionEquality().hash(pop));

  @JsonKey(ignore: true)
  @override
  _$$_MyCourseStateCopyWith<_$_MyCourseState> get copyWith =>
      __$$_MyCourseStateCopyWithImpl<_$_MyCourseState>(this, _$identity);
}

abstract class _MyCourseState implements MyCourseState {
  const factory _MyCourseState(
      {required final bool downloaded,
      required final JobState updatingState,
      required final List<Lesson> lessons,
      required final bool pop}) = _$_MyCourseState;

  @override
  bool get downloaded => throw _privateConstructorUsedError;
  @override
  JobState get updatingState => throw _privateConstructorUsedError;
  @override
  List<Lesson> get lessons => throw _privateConstructorUsedError;
  @override
  bool get pop => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MyCourseStateCopyWith<_$_MyCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
