// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() clear,
    required TResult Function(String course, bool updateLastListened) addCourse,
    required TResult Function(String course, bool updateLastListened)
        updateCourse,
    required TResult Function(String course) removeCourse,
    required TResult Function(String course) cancelJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLibraryEvent value) load,
    required TResult Function(_ClearLibraryEvent value) clear,
    required TResult Function(_AddCourseEvent value) addCourse,
    required TResult Function(_UpdateCourseEvent value) updateCourse,
    required TResult Function(_RemoveCourseEvent value) removeCourse,
    required TResult Function(_CancelJobEvent value) cancelJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryEventCopyWith<$Res> {
  factory $LibraryEventCopyWith(
          LibraryEvent value, $Res Function(LibraryEvent) then) =
      _$LibraryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LibraryEventCopyWithImpl<$Res> implements $LibraryEventCopyWith<$Res> {
  _$LibraryEventCopyWithImpl(this._value, this._then);

  final LibraryEvent _value;
  // ignore: unused_field
  final $Res Function(LibraryEvent) _then;
}

/// @nodoc
abstract class _$$_LoadLibraryEventCopyWith<$Res> {
  factory _$$_LoadLibraryEventCopyWith(
          _$_LoadLibraryEvent value, $Res Function(_$_LoadLibraryEvent) then) =
      __$$_LoadLibraryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadLibraryEventCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$_LoadLibraryEventCopyWith<$Res> {
  __$$_LoadLibraryEventCopyWithImpl(
      _$_LoadLibraryEvent _value, $Res Function(_$_LoadLibraryEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadLibraryEvent));

  @override
  _$_LoadLibraryEvent get _value => super._value as _$_LoadLibraryEvent;
}

/// @nodoc

class _$_LoadLibraryEvent implements _LoadLibraryEvent {
  const _$_LoadLibraryEvent();

  @override
  String toString() {
    return 'LibraryEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadLibraryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() clear,
    required TResult Function(String course, bool updateLastListened) addCourse,
    required TResult Function(String course, bool updateLastListened)
        updateCourse,
    required TResult Function(String course) removeCourse,
    required TResult Function(String course) cancelJob,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLibraryEvent value) load,
    required TResult Function(_ClearLibraryEvent value) clear,
    required TResult Function(_AddCourseEvent value) addCourse,
    required TResult Function(_UpdateCourseEvent value) updateCourse,
    required TResult Function(_RemoveCourseEvent value) removeCourse,
    required TResult Function(_CancelJobEvent value) cancelJob,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadLibraryEvent implements LibraryEvent {
  const factory _LoadLibraryEvent() = _$_LoadLibraryEvent;
}

/// @nodoc
abstract class _$$_ClearLibraryEventCopyWith<$Res> {
  factory _$$_ClearLibraryEventCopyWith(_$_ClearLibraryEvent value,
          $Res Function(_$_ClearLibraryEvent) then) =
      __$$_ClearLibraryEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearLibraryEventCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$_ClearLibraryEventCopyWith<$Res> {
  __$$_ClearLibraryEventCopyWithImpl(
      _$_ClearLibraryEvent _value, $Res Function(_$_ClearLibraryEvent) _then)
      : super(_value, (v) => _then(v as _$_ClearLibraryEvent));

  @override
  _$_ClearLibraryEvent get _value => super._value as _$_ClearLibraryEvent;
}

/// @nodoc

class _$_ClearLibraryEvent implements _ClearLibraryEvent {
  const _$_ClearLibraryEvent();

  @override
  String toString() {
    return 'LibraryEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearLibraryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() clear,
    required TResult Function(String course, bool updateLastListened) addCourse,
    required TResult Function(String course, bool updateLastListened)
        updateCourse,
    required TResult Function(String course) removeCourse,
    required TResult Function(String course) cancelJob,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLibraryEvent value) load,
    required TResult Function(_ClearLibraryEvent value) clear,
    required TResult Function(_AddCourseEvent value) addCourse,
    required TResult Function(_UpdateCourseEvent value) updateCourse,
    required TResult Function(_RemoveCourseEvent value) removeCourse,
    required TResult Function(_CancelJobEvent value) cancelJob,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearLibraryEvent implements LibraryEvent {
  const factory _ClearLibraryEvent() = _$_ClearLibraryEvent;
}

/// @nodoc
abstract class _$$_AddCourseEventCopyWith<$Res> {
  factory _$$_AddCourseEventCopyWith(
          _$_AddCourseEvent value, $Res Function(_$_AddCourseEvent) then) =
      __$$_AddCourseEventCopyWithImpl<$Res>;
  $Res call({String course, bool updateLastListened});
}

/// @nodoc
class __$$_AddCourseEventCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$_AddCourseEventCopyWith<$Res> {
  __$$_AddCourseEventCopyWithImpl(
      _$_AddCourseEvent _value, $Res Function(_$_AddCourseEvent) _then)
      : super(_value, (v) => _then(v as _$_AddCourseEvent));

  @override
  _$_AddCourseEvent get _value => super._value as _$_AddCourseEvent;

  @override
  $Res call({
    Object? course = freezed,
    Object? updateLastListened = freezed,
  }) {
    return _then(_$_AddCourseEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      updateLastListened: updateLastListened == freezed
          ? _value.updateLastListened
          : updateLastListened // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddCourseEvent implements _AddCourseEvent {
  const _$_AddCourseEvent(
      {required this.course, this.updateLastListened = true});

  @override
  final String course;
  @override
  @JsonKey()
  final bool updateLastListened;

  @override
  String toString() {
    return 'LibraryEvent.addCourse(course: $course, updateLastListened: $updateLastListened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCourseEvent &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality()
                .equals(other.updateLastListened, updateLastListened));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(updateLastListened));

  @JsonKey(ignore: true)
  @override
  _$$_AddCourseEventCopyWith<_$_AddCourseEvent> get copyWith =>
      __$$_AddCourseEventCopyWithImpl<_$_AddCourseEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() clear,
    required TResult Function(String course, bool updateLastListened) addCourse,
    required TResult Function(String course, bool updateLastListened)
        updateCourse,
    required TResult Function(String course) removeCourse,
    required TResult Function(String course) cancelJob,
  }) {
    return addCourse(course, updateLastListened);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
  }) {
    return addCourse?.call(course, updateLastListened);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(course, updateLastListened);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLibraryEvent value) load,
    required TResult Function(_ClearLibraryEvent value) clear,
    required TResult Function(_AddCourseEvent value) addCourse,
    required TResult Function(_UpdateCourseEvent value) updateCourse,
    required TResult Function(_RemoveCourseEvent value) removeCourse,
    required TResult Function(_CancelJobEvent value) cancelJob,
  }) {
    return addCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
  }) {
    return addCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(this);
    }
    return orElse();
  }
}

abstract class _AddCourseEvent implements LibraryEvent {
  const factory _AddCourseEvent(
      {required final String course,
      final bool updateLastListened}) = _$_AddCourseEvent;

  String get course => throw _privateConstructorUsedError;
  bool get updateLastListened => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddCourseEventCopyWith<_$_AddCourseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCourseEventCopyWith<$Res> {
  factory _$$_UpdateCourseEventCopyWith(_$_UpdateCourseEvent value,
          $Res Function(_$_UpdateCourseEvent) then) =
      __$$_UpdateCourseEventCopyWithImpl<$Res>;
  $Res call({String course, bool updateLastListened});
}

/// @nodoc
class __$$_UpdateCourseEventCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$_UpdateCourseEventCopyWith<$Res> {
  __$$_UpdateCourseEventCopyWithImpl(
      _$_UpdateCourseEvent _value, $Res Function(_$_UpdateCourseEvent) _then)
      : super(_value, (v) => _then(v as _$_UpdateCourseEvent));

  @override
  _$_UpdateCourseEvent get _value => super._value as _$_UpdateCourseEvent;

  @override
  $Res call({
    Object? course = freezed,
    Object? updateLastListened = freezed,
  }) {
    return _then(_$_UpdateCourseEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      updateLastListened: updateLastListened == freezed
          ? _value.updateLastListened
          : updateLastListened // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UpdateCourseEvent implements _UpdateCourseEvent {
  const _$_UpdateCourseEvent(
      {required this.course, this.updateLastListened = true});

  @override
  final String course;
  @override
  @JsonKey()
  final bool updateLastListened;

  @override
  String toString() {
    return 'LibraryEvent.updateCourse(course: $course, updateLastListened: $updateLastListened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCourseEvent &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality()
                .equals(other.updateLastListened, updateLastListened));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(updateLastListened));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCourseEventCopyWith<_$_UpdateCourseEvent> get copyWith =>
      __$$_UpdateCourseEventCopyWithImpl<_$_UpdateCourseEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() clear,
    required TResult Function(String course, bool updateLastListened) addCourse,
    required TResult Function(String course, bool updateLastListened)
        updateCourse,
    required TResult Function(String course) removeCourse,
    required TResult Function(String course) cancelJob,
  }) {
    return updateCourse(course, updateLastListened);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
  }) {
    return updateCourse?.call(course, updateLastListened);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
    required TResult orElse(),
  }) {
    if (updateCourse != null) {
      return updateCourse(course, updateLastListened);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLibraryEvent value) load,
    required TResult Function(_ClearLibraryEvent value) clear,
    required TResult Function(_AddCourseEvent value) addCourse,
    required TResult Function(_UpdateCourseEvent value) updateCourse,
    required TResult Function(_RemoveCourseEvent value) removeCourse,
    required TResult Function(_CancelJobEvent value) cancelJob,
  }) {
    return updateCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
  }) {
    return updateCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
    required TResult orElse(),
  }) {
    if (updateCourse != null) {
      return updateCourse(this);
    }
    return orElse();
  }
}

abstract class _UpdateCourseEvent implements LibraryEvent {
  const factory _UpdateCourseEvent(
      {required final String course,
      final bool updateLastListened}) = _$_UpdateCourseEvent;

  String get course => throw _privateConstructorUsedError;
  bool get updateLastListened => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateCourseEventCopyWith<_$_UpdateCourseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCourseEventCopyWith<$Res> {
  factory _$$_RemoveCourseEventCopyWith(_$_RemoveCourseEvent value,
          $Res Function(_$_RemoveCourseEvent) then) =
      __$$_RemoveCourseEventCopyWithImpl<$Res>;
  $Res call({String course});
}

/// @nodoc
class __$$_RemoveCourseEventCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$_RemoveCourseEventCopyWith<$Res> {
  __$$_RemoveCourseEventCopyWithImpl(
      _$_RemoveCourseEvent _value, $Res Function(_$_RemoveCourseEvent) _then)
      : super(_value, (v) => _then(v as _$_RemoveCourseEvent));

  @override
  _$_RemoveCourseEvent get _value => super._value as _$_RemoveCourseEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_$_RemoveCourseEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveCourseEvent implements _RemoveCourseEvent {
  const _$_RemoveCourseEvent({required this.course});

  @override
  final String course;

  @override
  String toString() {
    return 'LibraryEvent.removeCourse(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveCourseEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveCourseEventCopyWith<_$_RemoveCourseEvent> get copyWith =>
      __$$_RemoveCourseEventCopyWithImpl<_$_RemoveCourseEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() clear,
    required TResult Function(String course, bool updateLastListened) addCourse,
    required TResult Function(String course, bool updateLastListened)
        updateCourse,
    required TResult Function(String course) removeCourse,
    required TResult Function(String course) cancelJob,
  }) {
    return removeCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
  }) {
    return removeCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
    required TResult orElse(),
  }) {
    if (removeCourse != null) {
      return removeCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLibraryEvent value) load,
    required TResult Function(_ClearLibraryEvent value) clear,
    required TResult Function(_AddCourseEvent value) addCourse,
    required TResult Function(_UpdateCourseEvent value) updateCourse,
    required TResult Function(_RemoveCourseEvent value) removeCourse,
    required TResult Function(_CancelJobEvent value) cancelJob,
  }) {
    return removeCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
  }) {
    return removeCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
    required TResult orElse(),
  }) {
    if (removeCourse != null) {
      return removeCourse(this);
    }
    return orElse();
  }
}

abstract class _RemoveCourseEvent implements LibraryEvent {
  const factory _RemoveCourseEvent({required final String course}) =
      _$_RemoveCourseEvent;

  String get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RemoveCourseEventCopyWith<_$_RemoveCourseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelJobEventCopyWith<$Res> {
  factory _$$_CancelJobEventCopyWith(
          _$_CancelJobEvent value, $Res Function(_$_CancelJobEvent) then) =
      __$$_CancelJobEventCopyWithImpl<$Res>;
  $Res call({String course});
}

/// @nodoc
class __$$_CancelJobEventCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements _$$_CancelJobEventCopyWith<$Res> {
  __$$_CancelJobEventCopyWithImpl(
      _$_CancelJobEvent _value, $Res Function(_$_CancelJobEvent) _then)
      : super(_value, (v) => _then(v as _$_CancelJobEvent));

  @override
  _$_CancelJobEvent get _value => super._value as _$_CancelJobEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_$_CancelJobEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CancelJobEvent implements _CancelJobEvent {
  const _$_CancelJobEvent({required this.course});

  @override
  final String course;

  @override
  String toString() {
    return 'LibraryEvent.cancelJob(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelJobEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  _$$_CancelJobEventCopyWith<_$_CancelJobEvent> get copyWith =>
      __$$_CancelJobEventCopyWithImpl<_$_CancelJobEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() clear,
    required TResult Function(String course, bool updateLastListened) addCourse,
    required TResult Function(String course, bool updateLastListened)
        updateCourse,
    required TResult Function(String course) removeCourse,
    required TResult Function(String course) cancelJob,
  }) {
    return cancelJob(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
  }) {
    return cancelJob?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? clear,
    TResult Function(String course, bool updateLastListened)? addCourse,
    TResult Function(String course, bool updateLastListened)? updateCourse,
    TResult Function(String course)? removeCourse,
    TResult Function(String course)? cancelJob,
    required TResult orElse(),
  }) {
    if (cancelJob != null) {
      return cancelJob(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLibraryEvent value) load,
    required TResult Function(_ClearLibraryEvent value) clear,
    required TResult Function(_AddCourseEvent value) addCourse,
    required TResult Function(_UpdateCourseEvent value) updateCourse,
    required TResult Function(_RemoveCourseEvent value) removeCourse,
    required TResult Function(_CancelJobEvent value) cancelJob,
  }) {
    return cancelJob(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
  }) {
    return cancelJob?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLibraryEvent value)? load,
    TResult Function(_ClearLibraryEvent value)? clear,
    TResult Function(_AddCourseEvent value)? addCourse,
    TResult Function(_UpdateCourseEvent value)? updateCourse,
    TResult Function(_RemoveCourseEvent value)? removeCourse,
    TResult Function(_CancelJobEvent value)? cancelJob,
    required TResult orElse(),
  }) {
    if (cancelJob != null) {
      return cancelJob(this);
    }
    return orElse();
  }
}

abstract class _CancelJobEvent implements LibraryEvent {
  const factory _CancelJobEvent({required final String course}) =
      _$_CancelJobEvent;

  String get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CancelJobEventCopyWith<_$_CancelJobEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LibraryState {
  Map<String, JobProgress> get jobs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryStateCopyWith<LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res>;
  $Res call({Map<String, JobProgress> jobs});
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res> implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  final LibraryState _value;
  // ignore: unused_field
  final $Res Function(LibraryState) _then;

  @override
  $Res call({
    Object? jobs = freezed,
  }) {
    return _then(_value.copyWith(
      jobs: jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as Map<String, JobProgress>,
    ));
  }
}

/// @nodoc
abstract class _$$_LibraryStateCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$$_LibraryStateCopyWith(
          _$_LibraryState value, $Res Function(_$_LibraryState) then) =
      __$$_LibraryStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, JobProgress> jobs});
}

/// @nodoc
class __$$_LibraryStateCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res>
    implements _$$_LibraryStateCopyWith<$Res> {
  __$$_LibraryStateCopyWithImpl(
      _$_LibraryState _value, $Res Function(_$_LibraryState) _then)
      : super(_value, (v) => _then(v as _$_LibraryState));

  @override
  _$_LibraryState get _value => super._value as _$_LibraryState;

  @override
  $Res call({
    Object? jobs = freezed,
  }) {
    return _then(_$_LibraryState(
      jobs: jobs == freezed
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as Map<String, JobProgress>,
    ));
  }
}

/// @nodoc

class _$_LibraryState implements _LibraryState {
  const _$_LibraryState({required final Map<String, JobProgress> jobs})
      : _jobs = jobs;

  final Map<String, JobProgress> _jobs;
  @override
  Map<String, JobProgress> get jobs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_jobs);
  }

  @override
  String toString() {
    return 'LibraryState(jobs: $jobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryState &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jobs));

  @JsonKey(ignore: true)
  @override
  _$$_LibraryStateCopyWith<_$_LibraryState> get copyWith =>
      __$$_LibraryStateCopyWithImpl<_$_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState({required final Map<String, JobProgress> jobs}) =
      _$_LibraryState;

  @override
  Map<String, JobProgress> get jobs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryStateCopyWith<_$_LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}
