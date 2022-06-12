// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_media_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadMediaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadMediaEventCopyWith<$Res> {
  factory $DownloadMediaEventCopyWith(
          DownloadMediaEvent value, $Res Function(DownloadMediaEvent) then) =
      _$DownloadMediaEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadMediaEventCopyWithImpl<$Res>
    implements $DownloadMediaEventCopyWith<$Res> {
  _$DownloadMediaEventCopyWithImpl(this._value, this._then);

  final DownloadMediaEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadMediaEvent) _then;
}

/// @nodoc
abstract class _$$_DownloadCourseEventCopyWith<$Res> {
  factory _$$_DownloadCourseEventCopyWith(_$_DownloadCourseEvent value,
          $Res Function(_$_DownloadCourseEvent) then) =
      __$$_DownloadCourseEventCopyWithImpl<$Res>;
  $Res call({Course course});
}

/// @nodoc
class __$$_DownloadCourseEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_DownloadCourseEventCopyWith<$Res> {
  __$$_DownloadCourseEventCopyWithImpl(_$_DownloadCourseEvent _value,
      $Res Function(_$_DownloadCourseEvent) _then)
      : super(_value, (v) => _then(v as _$_DownloadCourseEvent));

  @override
  _$_DownloadCourseEvent get _value => super._value as _$_DownloadCourseEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_$_DownloadCourseEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc

class _$_DownloadCourseEvent implements _DownloadCourseEvent {
  const _$_DownloadCourseEvent({required this.course});

  @override
  final Course course;

  @override
  String toString() {
    return 'DownloadMediaEvent.downloadCourse(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadCourseEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadCourseEventCopyWith<_$_DownloadCourseEvent> get copyWith =>
      __$$_DownloadCourseEventCopyWithImpl<_$_DownloadCourseEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return downloadCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return downloadCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (downloadCourse != null) {
      return downloadCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return downloadCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return downloadCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (downloadCourse != null) {
      return downloadCourse(this);
    }
    return orElse();
  }
}

abstract class _DownloadCourseEvent implements DownloadMediaEvent {
  const factory _DownloadCourseEvent({required final Course course}) =
      _$_DownloadCourseEvent;

  Course get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DownloadCourseEventCopyWith<_$_DownloadCourseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadExercisesEventCopyWith<$Res> {
  factory _$$_DownloadExercisesEventCopyWith(_$_DownloadExercisesEvent value,
          $Res Function(_$_DownloadExercisesEvent) then) =
      __$$_DownloadExercisesEventCopyWithImpl<$Res>;
  $Res call({Course course, List<ExerciseContent> exercises});
}

/// @nodoc
class __$$_DownloadExercisesEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_DownloadExercisesEventCopyWith<$Res> {
  __$$_DownloadExercisesEventCopyWithImpl(_$_DownloadExercisesEvent _value,
      $Res Function(_$_DownloadExercisesEvent) _then)
      : super(_value, (v) => _then(v as _$_DownloadExercisesEvent));

  @override
  _$_DownloadExercisesEvent get _value =>
      super._value as _$_DownloadExercisesEvent;

  @override
  $Res call({
    Object? course = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_$_DownloadExercisesEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
      exercises: exercises == freezed
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseContent>,
    ));
  }
}

/// @nodoc

class _$_DownloadExercisesEvent implements _DownloadExercisesEvent {
  const _$_DownloadExercisesEvent(
      {required this.course, required final List<ExerciseContent> exercises})
      : _exercises = exercises;

  @override
  final Course course;
  final List<ExerciseContent> _exercises;
  @override
  List<ExerciseContent> get exercises {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'DownloadMediaEvent.downloadExercises(course: $course, exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadExercisesEvent &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadExercisesEventCopyWith<_$_DownloadExercisesEvent> get copyWith =>
      __$$_DownloadExercisesEventCopyWithImpl<_$_DownloadExercisesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return downloadExercises(course, exercises);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return downloadExercises?.call(course, exercises);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (downloadExercises != null) {
      return downloadExercises(course, exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return downloadExercises(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return downloadExercises?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (downloadExercises != null) {
      return downloadExercises(this);
    }
    return orElse();
  }
}

abstract class _DownloadExercisesEvent implements DownloadMediaEvent {
  const factory _DownloadExercisesEvent(
          {required final Course course,
          required final List<ExerciseContent> exercises}) =
      _$_DownloadExercisesEvent;

  Course get course => throw _privateConstructorUsedError;
  List<ExerciseContent> get exercises => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_DownloadExercisesEventCopyWith<_$_DownloadExercisesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DownloadEventCopyWith<$Res> {
  factory _$$_DownloadEventCopyWith(
          _$_DownloadEvent value, $Res Function(_$_DownloadEvent) then) =
      __$$_DownloadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_DownloadEventCopyWith<$Res> {
  __$$_DownloadEventCopyWithImpl(
      _$_DownloadEvent _value, $Res Function(_$_DownloadEvent) _then)
      : super(_value, (v) => _then(v as _$_DownloadEvent));

  @override
  _$_DownloadEvent get _value => super._value as _$_DownloadEvent;
}

/// @nodoc

class _$_DownloadEvent implements _DownloadEvent {
  const _$_DownloadEvent();

  @override
  String toString() {
    return 'DownloadMediaEvent.download()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DownloadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return download();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return download?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class _DownloadEvent implements DownloadMediaEvent {
  const factory _DownloadEvent() = _$_DownloadEvent;
}

/// @nodoc
abstract class _$$_CancelEventCopyWith<$Res> {
  factory _$$_CancelEventCopyWith(
          _$_CancelEvent value, $Res Function(_$_CancelEvent) then) =
      __$$_CancelEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_CancelEventCopyWith<$Res> {
  __$$_CancelEventCopyWithImpl(
      _$_CancelEvent _value, $Res Function(_$_CancelEvent) _then)
      : super(_value, (v) => _then(v as _$_CancelEvent));

  @override
  _$_CancelEvent get _value => super._value as _$_CancelEvent;
}

/// @nodoc

class _$_CancelEvent implements _CancelEvent {
  const _$_CancelEvent();

  @override
  String toString() {
    return 'DownloadMediaEvent.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _CancelEvent implements DownloadMediaEvent {
  const factory _CancelEvent() = _$_CancelEvent;
}

/// @nodoc
abstract class _$$_ProgressChangedEventCopyWith<$Res> {
  factory _$$_ProgressChangedEventCopyWith(_$_ProgressChangedEvent value,
          $Res Function(_$_ProgressChangedEvent) then) =
      __$$_ProgressChangedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProgressChangedEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_ProgressChangedEventCopyWith<$Res> {
  __$$_ProgressChangedEventCopyWithImpl(_$_ProgressChangedEvent _value,
      $Res Function(_$_ProgressChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_ProgressChangedEvent));

  @override
  _$_ProgressChangedEvent get _value => super._value as _$_ProgressChangedEvent;
}

/// @nodoc

class _$_ProgressChangedEvent implements _ProgressChangedEvent {
  const _$_ProgressChangedEvent();

  @override
  String toString() {
    return 'DownloadMediaEvent.progressChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProgressChangedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return progressChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return progressChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (progressChanged != null) {
      return progressChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return progressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return progressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (progressChanged != null) {
      return progressChanged(this);
    }
    return orElse();
  }
}

abstract class _ProgressChangedEvent implements DownloadMediaEvent {
  const factory _ProgressChangedEvent() = _$_ProgressChangedEvent;
}

/// @nodoc
abstract class _$$_ErrorEventCopyWith<$Res> {
  factory _$$_ErrorEventCopyWith(
          _$_ErrorEvent value, $Res Function(_$_ErrorEvent) then) =
      __$$_ErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_ErrorEventCopyWith<$Res> {
  __$$_ErrorEventCopyWithImpl(
      _$_ErrorEvent _value, $Res Function(_$_ErrorEvent) _then)
      : super(_value, (v) => _then(v as _$_ErrorEvent));

  @override
  _$_ErrorEvent get _value => super._value as _$_ErrorEvent;
}

/// @nodoc

class _$_ErrorEvent implements _ErrorEvent {
  const _$_ErrorEvent();

  @override
  String toString() {
    return 'DownloadMediaEvent.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorEvent implements DownloadMediaEvent {
  const factory _ErrorEvent() = _$_ErrorEvent;
}

/// @nodoc
abstract class _$$_ConnectivityChangedEventCopyWith<$Res> {
  factory _$$_ConnectivityChangedEventCopyWith(
          _$_ConnectivityChangedEvent value,
          $Res Function(_$_ConnectivityChangedEvent) then) =
      __$$_ConnectivityChangedEventCopyWithImpl<$Res>;
  $Res call({ConnectivityResult result});
}

/// @nodoc
class __$$_ConnectivityChangedEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_ConnectivityChangedEventCopyWith<$Res> {
  __$$_ConnectivityChangedEventCopyWithImpl(_$_ConnectivityChangedEvent _value,
      $Res Function(_$_ConnectivityChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_ConnectivityChangedEvent));

  @override
  _$_ConnectivityChangedEvent get _value =>
      super._value as _$_ConnectivityChangedEvent;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_ConnectivityChangedEvent(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_ConnectivityChangedEvent implements _ConnectivityChangedEvent {
  const _$_ConnectivityChangedEvent({required this.result});

  @override
  final ConnectivityResult result;

  @override
  String toString() {
    return 'DownloadMediaEvent.connectivityChanged(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityChangedEvent &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_ConnectivityChangedEventCopyWith<_$_ConnectivityChangedEvent>
      get copyWith => __$$_ConnectivityChangedEventCopyWithImpl<
          _$_ConnectivityChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return connectivityChanged(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return connectivityChanged?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return connectivityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return connectivityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityChangedEvent implements DownloadMediaEvent {
  const factory _ConnectivityChangedEvent(
      {required final ConnectivityResult result}) = _$_ConnectivityChangedEvent;

  ConnectivityResult get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ConnectivityChangedEventCopyWith<_$_ConnectivityChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StorageErrorEventCopyWith<$Res> {
  factory _$$_StorageErrorEventCopyWith(_$_StorageErrorEvent value,
          $Res Function(_$_StorageErrorEvent) then) =
      __$$_StorageErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StorageErrorEventCopyWithImpl<$Res>
    extends _$DownloadMediaEventCopyWithImpl<$Res>
    implements _$$_StorageErrorEventCopyWith<$Res> {
  __$$_StorageErrorEventCopyWithImpl(
      _$_StorageErrorEvent _value, $Res Function(_$_StorageErrorEvent) _then)
      : super(_value, (v) => _then(v as _$_StorageErrorEvent));

  @override
  _$_StorageErrorEvent get _value => super._value as _$_StorageErrorEvent;
}

/// @nodoc

class _$_StorageErrorEvent implements _StorageErrorEvent {
  const _$_StorageErrorEvent();

  @override
  String toString() {
    return 'DownloadMediaEvent.storageError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StorageErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course course) downloadCourse,
    required TResult Function(Course course, List<ExerciseContent> exercises)
        downloadExercises,
    required TResult Function() download,
    required TResult Function() cancel,
    required TResult Function() progressChanged,
    required TResult Function() error,
    required TResult Function(ConnectivityResult result) connectivityChanged,
    required TResult Function() storageError,
  }) {
    return storageError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
    TResult Function()? storageError,
  }) {
    return storageError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course course)? downloadCourse,
    TResult Function(Course course, List<ExerciseContent> exercises)?
        downloadExercises,
    TResult Function()? download,
    TResult Function()? cancel,
    TResult Function()? progressChanged,
    TResult Function()? error,
    TResult Function(ConnectivityResult result)? connectivityChanged,
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
    required TResult Function(_DownloadCourseEvent value) downloadCourse,
    required TResult Function(_DownloadExercisesEvent value) downloadExercises,
    required TResult Function(_DownloadEvent value) download,
    required TResult Function(_CancelEvent value) cancel,
    required TResult Function(_ProgressChangedEvent value) progressChanged,
    required TResult Function(_ErrorEvent value) error,
    required TResult Function(_ConnectivityChangedEvent value)
        connectivityChanged,
    required TResult Function(_StorageErrorEvent value) storageError,
  }) {
    return storageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
  }) {
    return storageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadCourseEvent value)? downloadCourse,
    TResult Function(_DownloadExercisesEvent value)? downloadExercises,
    TResult Function(_DownloadEvent value)? download,
    TResult Function(_CancelEvent value)? cancel,
    TResult Function(_ProgressChangedEvent value)? progressChanged,
    TResult Function(_ErrorEvent value)? error,
    TResult Function(_ConnectivityChangedEvent value)? connectivityChanged,
    TResult Function(_StorageErrorEvent value)? storageError,
    required TResult orElse(),
  }) {
    if (storageError != null) {
      return storageError(this);
    }
    return orElse();
  }
}

abstract class _StorageErrorEvent implements DownloadMediaEvent {
  const factory _StorageErrorEvent() = _$_StorageErrorEvent;
}

/// @nodoc
mixin _$DownloadMediaState {
  int get total => throw _privateConstructorUsedError;
  int get completed => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  JobState get state => throw _privateConstructorUsedError;
  ConnectivityState get connectivityState => throw _privateConstructorUsedError;
  Option<DownloadingFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadMediaStateCopyWith<DownloadMediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadMediaStateCopyWith<$Res> {
  factory $DownloadMediaStateCopyWith(
          DownloadMediaState value, $Res Function(DownloadMediaState) then) =
      _$DownloadMediaStateCopyWithImpl<$Res>;
  $Res call(
      {int total,
      int completed,
      double progress,
      JobState state,
      ConnectivityState connectivityState,
      Option<DownloadingFailure> failure});
}

/// @nodoc
class _$DownloadMediaStateCopyWithImpl<$Res>
    implements $DownloadMediaStateCopyWith<$Res> {
  _$DownloadMediaStateCopyWithImpl(this._value, this._then);

  final DownloadMediaState _value;
  // ignore: unused_field
  final $Res Function(DownloadMediaState) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? completed = freezed,
    Object? progress = freezed,
    Object? state = freezed,
    Object? connectivityState = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as JobState,
      connectivityState: connectivityState == freezed
          ? _value.connectivityState
          : connectivityState // ignore: cast_nullable_to_non_nullable
              as ConnectivityState,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<DownloadingFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadMediaDataCopyWith<$Res>
    implements $DownloadMediaStateCopyWith<$Res> {
  factory _$$_DownloadMediaDataCopyWith(_$_DownloadMediaData value,
          $Res Function(_$_DownloadMediaData) then) =
      __$$_DownloadMediaDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int total,
      int completed,
      double progress,
      JobState state,
      ConnectivityState connectivityState,
      Option<DownloadingFailure> failure});
}

/// @nodoc
class __$$_DownloadMediaDataCopyWithImpl<$Res>
    extends _$DownloadMediaStateCopyWithImpl<$Res>
    implements _$$_DownloadMediaDataCopyWith<$Res> {
  __$$_DownloadMediaDataCopyWithImpl(
      _$_DownloadMediaData _value, $Res Function(_$_DownloadMediaData) _then)
      : super(_value, (v) => _then(v as _$_DownloadMediaData));

  @override
  _$_DownloadMediaData get _value => super._value as _$_DownloadMediaData;

  @override
  $Res call({
    Object? total = freezed,
    Object? completed = freezed,
    Object? progress = freezed,
    Object? state = freezed,
    Object? connectivityState = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_DownloadMediaData(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as JobState,
      connectivityState: connectivityState == freezed
          ? _value.connectivityState
          : connectivityState // ignore: cast_nullable_to_non_nullable
              as ConnectivityState,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<DownloadingFailure>,
    ));
  }
}

/// @nodoc

class _$_DownloadMediaData implements _DownloadMediaData {
  const _$_DownloadMediaData(
      {required this.total,
      required this.completed,
      required this.progress,
      required this.state,
      required this.connectivityState,
      required this.failure});

  @override
  final int total;
  @override
  final int completed;
  @override
  final double progress;
  @override
  final JobState state;
  @override
  final ConnectivityState connectivityState;
  @override
  final Option<DownloadingFailure> failure;

  @override
  String toString() {
    return 'DownloadMediaState(total: $total, completed: $completed, progress: $progress, state: $state, connectivityState: $connectivityState, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadMediaData &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.connectivityState, connectivityState) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(connectivityState),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadMediaDataCopyWith<_$_DownloadMediaData> get copyWith =>
      __$$_DownloadMediaDataCopyWithImpl<_$_DownloadMediaData>(
          this, _$identity);
}

abstract class _DownloadMediaData implements DownloadMediaState {
  const factory _DownloadMediaData(
          {required final int total,
          required final int completed,
          required final double progress,
          required final JobState state,
          required final ConnectivityState connectivityState,
          required final Option<DownloadingFailure> failure}) =
      _$_DownloadMediaData;

  @override
  int get total => throw _privateConstructorUsedError;
  @override
  int get completed => throw _privateConstructorUsedError;
  @override
  double get progress => throw _privateConstructorUsedError;
  @override
  JobState get state => throw _privateConstructorUsedError;
  @override
  ConnectivityState get connectivityState => throw _privateConstructorUsedError;
  @override
  Option<DownloadingFailure> get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadMediaDataCopyWith<_$_DownloadMediaData> get copyWith =>
      throw _privateConstructorUsedError;
}
