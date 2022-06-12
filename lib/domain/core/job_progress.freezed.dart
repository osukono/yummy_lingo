// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobProgress {
  JobState get state => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobProgressCopyWith<JobProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobProgressCopyWith<$Res> {
  factory $JobProgressCopyWith(
          JobProgress value, $Res Function(JobProgress) then) =
      _$JobProgressCopyWithImpl<$Res>;
  $Res call({JobState state, double progress});
}

/// @nodoc
class _$JobProgressCopyWithImpl<$Res> implements $JobProgressCopyWith<$Res> {
  _$JobProgressCopyWithImpl(this._value, this._then);

  final JobProgress _value;
  // ignore: unused_field
  final $Res Function(JobProgress) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as JobState,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_JobProgressCopyWith<$Res>
    implements $JobProgressCopyWith<$Res> {
  factory _$$_JobProgressCopyWith(
          _$_JobProgress value, $Res Function(_$_JobProgress) then) =
      __$$_JobProgressCopyWithImpl<$Res>;
  @override
  $Res call({JobState state, double progress});
}

/// @nodoc
class __$$_JobProgressCopyWithImpl<$Res> extends _$JobProgressCopyWithImpl<$Res>
    implements _$$_JobProgressCopyWith<$Res> {
  __$$_JobProgressCopyWithImpl(
      _$_JobProgress _value, $Res Function(_$_JobProgress) _then)
      : super(_value, (v) => _then(v as _$_JobProgress));

  @override
  _$_JobProgress get _value => super._value as _$_JobProgress;

  @override
  $Res call({
    Object? state = freezed,
    Object? progress = freezed,
  }) {
    return _then(_$_JobProgress(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as JobState,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_JobProgress implements _JobProgress {
  _$_JobProgress({required this.state, required this.progress});

  @override
  final JobState state;
  @override
  final double progress;

  @override
  String toString() {
    return 'JobProgress(state: $state, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobProgress &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$$_JobProgressCopyWith<_$_JobProgress> get copyWith =>
      __$$_JobProgressCopyWithImpl<_$_JobProgress>(this, _$identity);
}

abstract class _JobProgress implements JobProgress {
  factory _JobProgress(
      {required final JobState state,
      required final double progress}) = _$_JobProgress;

  @override
  JobState get state => throw _privateConstructorUsedError;
  @override
  double get progress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JobProgressCopyWith<_$_JobProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
