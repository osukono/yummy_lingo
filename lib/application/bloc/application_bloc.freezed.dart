// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  final ApplicationEvent _value;
  // ignore: unused_field
  final $Res Function(ApplicationEvent) _then;
}

/// @nodoc
abstract class _$$_ApplicationStartedEventCopyWith<$Res> {
  factory _$$_ApplicationStartedEventCopyWith(_$_ApplicationStartedEvent value,
          $Res Function(_$_ApplicationStartedEvent) then) =
      __$$_ApplicationStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApplicationStartedEventCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$$_ApplicationStartedEventCopyWith<$Res> {
  __$$_ApplicationStartedEventCopyWithImpl(_$_ApplicationStartedEvent _value,
      $Res Function(_$_ApplicationStartedEvent) _then)
      : super(_value, (v) => _then(v as _$_ApplicationStartedEvent));

  @override
  _$_ApplicationStartedEvent get _value =>
      super._value as _$_ApplicationStartedEvent;
}

/// @nodoc

class _$_ApplicationStartedEvent
    with DiagnosticableTreeMixin
    implements _ApplicationStartedEvent {
  const _$_ApplicationStartedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ApplicationEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
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
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _ApplicationStartedEvent implements ApplicationEvent {
  const factory _ApplicationStartedEvent() = _$_ApplicationStartedEvent;
}

/// @nodoc
abstract class _$$_ShowLessonLockedDialogEventCopyWith<$Res> {
  factory _$$_ShowLessonLockedDialogEventCopyWith(
          _$_ShowLessonLockedDialogEvent value,
          $Res Function(_$_ShowLessonLockedDialogEvent) then) =
      __$$_ShowLessonLockedDialogEventCopyWithImpl<$Res>;
  $Res call({String course});
}

/// @nodoc
class __$$_ShowLessonLockedDialogEventCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$$_ShowLessonLockedDialogEventCopyWith<$Res> {
  __$$_ShowLessonLockedDialogEventCopyWithImpl(
      _$_ShowLessonLockedDialogEvent _value,
      $Res Function(_$_ShowLessonLockedDialogEvent) _then)
      : super(_value, (v) => _then(v as _$_ShowLessonLockedDialogEvent));

  @override
  _$_ShowLessonLockedDialogEvent get _value =>
      super._value as _$_ShowLessonLockedDialogEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_$_ShowLessonLockedDialogEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowLessonLockedDialogEvent
    with DiagnosticableTreeMixin
    implements _ShowLessonLockedDialogEvent {
  const _$_ShowLessonLockedDialogEvent({required this.course});

  @override
  final String course;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationEvent.showLessonLockedDialog(course: $course)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationEvent.showLessonLockedDialog'))
      ..add(DiagnosticsProperty('course', course));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowLessonLockedDialogEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  _$$_ShowLessonLockedDialogEventCopyWith<_$_ShowLessonLockedDialogEvent>
      get copyWith => __$$_ShowLessonLockedDialogEventCopyWithImpl<
          _$_ShowLessonLockedDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showLessonLockedDialog != null) {
      return showLessonLockedDialog(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showLessonLockedDialog != null) {
      return showLessonLockedDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowLessonLockedDialogEvent implements ApplicationEvent {
  const factory _ShowLessonLockedDialogEvent({required final String course}) =
      _$_ShowLessonLockedDialogEvent;

  String get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowLessonLockedDialogEventCopyWith<_$_ShowLessonLockedDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowBuyCourseDialogEventCopyWith<$Res> {
  factory _$$_ShowBuyCourseDialogEventCopyWith(
          _$_ShowBuyCourseDialogEvent value,
          $Res Function(_$_ShowBuyCourseDialogEvent) then) =
      __$$_ShowBuyCourseDialogEventCopyWithImpl<$Res>;
  $Res call({String course});
}

/// @nodoc
class __$$_ShowBuyCourseDialogEventCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$$_ShowBuyCourseDialogEventCopyWith<$Res> {
  __$$_ShowBuyCourseDialogEventCopyWithImpl(_$_ShowBuyCourseDialogEvent _value,
      $Res Function(_$_ShowBuyCourseDialogEvent) _then)
      : super(_value, (v) => _then(v as _$_ShowBuyCourseDialogEvent));

  @override
  _$_ShowBuyCourseDialogEvent get _value =>
      super._value as _$_ShowBuyCourseDialogEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_$_ShowBuyCourseDialogEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowBuyCourseDialogEvent
    with DiagnosticableTreeMixin
    implements _ShowBuyCourseDialogEvent {
  const _$_ShowBuyCourseDialogEvent({required this.course});

  @override
  final String course;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationEvent.showBuyCourseDialog(course: $course)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApplicationEvent.showBuyCourseDialog'))
      ..add(DiagnosticsProperty('course', course));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowBuyCourseDialogEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  _$$_ShowBuyCourseDialogEventCopyWith<_$_ShowBuyCourseDialogEvent>
      get copyWith => __$$_ShowBuyCourseDialogEventCopyWithImpl<
          _$_ShowBuyCourseDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) {
    return showBuyCourseDialog(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) {
    return showBuyCourseDialog?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showBuyCourseDialog != null) {
      return showBuyCourseDialog(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) {
    return showBuyCourseDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) {
    return showBuyCourseDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showBuyCourseDialog != null) {
      return showBuyCourseDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowBuyCourseDialogEvent implements ApplicationEvent {
  const factory _ShowBuyCourseDialogEvent({required final String course}) =
      _$_ShowBuyCourseDialogEvent;

  String get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowBuyCourseDialogEventCopyWith<_$_ShowBuyCourseDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowBuySuccessDialogEventCopyWith<$Res> {
  factory _$$_ShowBuySuccessDialogEventCopyWith(
          _$_ShowBuySuccessDialogEvent value,
          $Res Function(_$_ShowBuySuccessDialogEvent) then) =
      __$$_ShowBuySuccessDialogEventCopyWithImpl<$Res>;
  $Res call({bool result});
}

/// @nodoc
class __$$_ShowBuySuccessDialogEventCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$$_ShowBuySuccessDialogEventCopyWith<$Res> {
  __$$_ShowBuySuccessDialogEventCopyWithImpl(
      _$_ShowBuySuccessDialogEvent _value,
      $Res Function(_$_ShowBuySuccessDialogEvent) _then)
      : super(_value, (v) => _then(v as _$_ShowBuySuccessDialogEvent));

  @override
  _$_ShowBuySuccessDialogEvent get _value =>
      super._value as _$_ShowBuySuccessDialogEvent;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_ShowBuySuccessDialogEvent(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowBuySuccessDialogEvent
    with DiagnosticableTreeMixin
    implements _ShowBuySuccessDialogEvent {
  const _$_ShowBuySuccessDialogEvent({required this.result});

  @override
  final bool result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationEvent.showBuySuccessDialog(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ApplicationEvent.showBuySuccessDialog'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowBuySuccessDialogEvent &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_ShowBuySuccessDialogEventCopyWith<_$_ShowBuySuccessDialogEvent>
      get copyWith => __$$_ShowBuySuccessDialogEventCopyWithImpl<
          _$_ShowBuySuccessDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) {
    return showBuySuccessDialog(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) {
    return showBuySuccessDialog?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showBuySuccessDialog != null) {
      return showBuySuccessDialog(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) {
    return showBuySuccessDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) {
    return showBuySuccessDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showBuySuccessDialog != null) {
      return showBuySuccessDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowBuySuccessDialogEvent implements ApplicationEvent {
  const factory _ShowBuySuccessDialogEvent({required final bool result}) =
      _$_ShowBuySuccessDialogEvent;

  bool get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowBuySuccessDialogEventCopyWith<_$_ShowBuySuccessDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowCourseCompletedDialogEventCopyWith<$Res> {
  factory _$$_ShowCourseCompletedDialogEventCopyWith(
          _$_ShowCourseCompletedDialogEvent value,
          $Res Function(_$_ShowCourseCompletedDialogEvent) then) =
      __$$_ShowCourseCompletedDialogEventCopyWithImpl<$Res>;
  $Res call({String course});
}

/// @nodoc
class __$$_ShowCourseCompletedDialogEventCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$$_ShowCourseCompletedDialogEventCopyWith<$Res> {
  __$$_ShowCourseCompletedDialogEventCopyWithImpl(
      _$_ShowCourseCompletedDialogEvent _value,
      $Res Function(_$_ShowCourseCompletedDialogEvent) _then)
      : super(_value, (v) => _then(v as _$_ShowCourseCompletedDialogEvent));

  @override
  _$_ShowCourseCompletedDialogEvent get _value =>
      super._value as _$_ShowCourseCompletedDialogEvent;

  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_$_ShowCourseCompletedDialogEvent(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowCourseCompletedDialogEvent
    with DiagnosticableTreeMixin
    implements _ShowCourseCompletedDialogEvent {
  const _$_ShowCourseCompletedDialogEvent({required this.course});

  @override
  final String course;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationEvent.showCourseCompletedDialog(course: $course)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationEvent.showCourseCompletedDialog'))
      ..add(DiagnosticsProperty('course', course));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowCourseCompletedDialogEvent &&
            const DeepCollectionEquality().equals(other.course, course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(course));

  @JsonKey(ignore: true)
  @override
  _$$_ShowCourseCompletedDialogEventCopyWith<_$_ShowCourseCompletedDialogEvent>
      get copyWith => __$$_ShowCourseCompletedDialogEventCopyWithImpl<
          _$_ShowCourseCompletedDialogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showCourseCompletedDialog != null) {
      return showCourseCompletedDialog(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showCourseCompletedDialog != null) {
      return showCourseCompletedDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowCourseCompletedDialogEvent implements ApplicationEvent {
  const factory _ShowCourseCompletedDialogEvent(
      {required final String course}) = _$_ShowCourseCompletedDialogEvent;

  String get course => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowCourseCompletedDialogEventCopyWith<_$_ShowCourseCompletedDialogEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowUpgradeAnonymousUserDialogEventCopyWith<$Res> {
  factory _$$_ShowUpgradeAnonymousUserDialogEventCopyWith(
          _$_ShowUpgradeAnonymousUserDialogEvent value,
          $Res Function(_$_ShowUpgradeAnonymousUserDialogEvent) then) =
      __$$_ShowUpgradeAnonymousUserDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowUpgradeAnonymousUserDialogEventCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$$_ShowUpgradeAnonymousUserDialogEventCopyWith<$Res> {
  __$$_ShowUpgradeAnonymousUserDialogEventCopyWithImpl(
      _$_ShowUpgradeAnonymousUserDialogEvent _value,
      $Res Function(_$_ShowUpgradeAnonymousUserDialogEvent) _then)
      : super(
            _value, (v) => _then(v as _$_ShowUpgradeAnonymousUserDialogEvent));

  @override
  _$_ShowUpgradeAnonymousUserDialogEvent get _value =>
      super._value as _$_ShowUpgradeAnonymousUserDialogEvent;
}

/// @nodoc

class _$_ShowUpgradeAnonymousUserDialogEvent
    with DiagnosticableTreeMixin
    implements _ShowUpgradeAnonymousUserDialogEvent {
  const _$_ShowUpgradeAnonymousUserDialogEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationEvent.showUpgradeAnonymousUserDialog()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ApplicationEvent.showUpgradeAnonymousUserDialog'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowUpgradeAnonymousUserDialogEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showUpgradeAnonymousUserDialog != null) {
      return showUpgradeAnonymousUserDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showUpgradeAnonymousUserDialog != null) {
      return showUpgradeAnonymousUserDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowUpgradeAnonymousUserDialogEvent
    implements ApplicationEvent {
  const factory _ShowUpgradeAnonymousUserDialogEvent() =
      _$_ShowUpgradeAnonymousUserDialogEvent;
}

/// @nodoc
abstract class _$$_ShowNoInternetConnectionDialogEventCopyWith<$Res> {
  factory _$$_ShowNoInternetConnectionDialogEventCopyWith(
          _$_ShowNoInternetConnectionDialogEvent value,
          $Res Function(_$_ShowNoInternetConnectionDialogEvent) then) =
      __$$_ShowNoInternetConnectionDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowNoInternetConnectionDialogEventCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res>
    implements _$$_ShowNoInternetConnectionDialogEventCopyWith<$Res> {
  __$$_ShowNoInternetConnectionDialogEventCopyWithImpl(
      _$_ShowNoInternetConnectionDialogEvent _value,
      $Res Function(_$_ShowNoInternetConnectionDialogEvent) _then)
      : super(
            _value, (v) => _then(v as _$_ShowNoInternetConnectionDialogEvent));

  @override
  _$_ShowNoInternetConnectionDialogEvent get _value =>
      super._value as _$_ShowNoInternetConnectionDialogEvent;
}

/// @nodoc

class _$_ShowNoInternetConnectionDialogEvent
    with DiagnosticableTreeMixin
    implements _ShowNoInternetConnectionDialogEvent {
  const _$_ShowNoInternetConnectionDialogEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationEvent.showNoInternetConnectionDialog()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ApplicationEvent.showNoInternetConnectionDialog'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowNoInternetConnectionDialogEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String course) showLessonLockedDialog,
    required TResult Function(String course) showBuyCourseDialog,
    required TResult Function(bool result) showBuySuccessDialog,
    required TResult Function(String course) showCourseCompletedDialog,
    required TResult Function() showUpgradeAnonymousUserDialog,
    required TResult Function() showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String course)? showLessonLockedDialog,
    TResult Function(String course)? showBuyCourseDialog,
    TResult Function(bool result)? showBuySuccessDialog,
    TResult Function(String course)? showCourseCompletedDialog,
    TResult Function()? showUpgradeAnonymousUserDialog,
    TResult Function()? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showNoInternetConnectionDialog != null) {
      return showNoInternetConnectionDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationStartedEvent value) started,
    required TResult Function(_ShowLessonLockedDialogEvent value)
        showLessonLockedDialog,
    required TResult Function(_ShowBuyCourseDialogEvent value)
        showBuyCourseDialog,
    required TResult Function(_ShowBuySuccessDialogEvent value)
        showBuySuccessDialog,
    required TResult Function(_ShowCourseCompletedDialogEvent value)
        showCourseCompletedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialogEvent value)
        showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationStartedEvent value)? started,
    TResult Function(_ShowLessonLockedDialogEvent value)?
        showLessonLockedDialog,
    TResult Function(_ShowBuyCourseDialogEvent value)? showBuyCourseDialog,
    TResult Function(_ShowBuySuccessDialogEvent value)? showBuySuccessDialog,
    TResult Function(_ShowCourseCompletedDialogEvent value)?
        showCourseCompletedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialogEvent value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialogEvent value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showNoInternetConnectionDialog != null) {
      return showNoInternetConnectionDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowNoInternetConnectionDialogEvent
    implements ApplicationEvent {
  const factory _ShowNoInternetConnectionDialogEvent() =
      _$_ShowNoInternetConnectionDialogEvent;
}

/// @nodoc
mixin _$ApplicationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool result, String uuid)
        showPaymentSuccessDialog,
    required TResult Function(String course, String uuid)
        showCourseCompletedDialog,
    required TResult Function(String course, String uuid)
        showLessonLockedDialog,
    required TResult Function(String uuid) showUpgradeAnonymousUserDialog,
    required TResult Function(String uuid) showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowBuySuccessDialog value)
        showPaymentSuccessDialog,
    required TResult Function(_ShowCourseCompletedDialog value)
        showCourseCompletedDialog,
    required TResult Function(_ShowLessonLockedDialog value)
        showLessonLockedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialog value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialog value)
        showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  final ApplicationState _value;
  // ignore: unused_field
  final $Res Function(ApplicationState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ApplicationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool result, String uuid)
        showPaymentSuccessDialog,
    required TResult Function(String course, String uuid)
        showCourseCompletedDialog,
    required TResult Function(String course, String uuid)
        showLessonLockedDialog,
    required TResult Function(String uuid) showUpgradeAnonymousUserDialog,
    required TResult Function(String uuid) showNoInternetConnectionDialog,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowBuySuccessDialog value)
        showPaymentSuccessDialog,
    required TResult Function(_ShowCourseCompletedDialog value)
        showCourseCompletedDialog,
    required TResult Function(_ShowLessonLockedDialog value)
        showLessonLockedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialog value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialog value)
        showNoInternetConnectionDialog,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ApplicationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ShowBuySuccessDialogCopyWith<$Res> {
  factory _$$_ShowBuySuccessDialogCopyWith(_$_ShowBuySuccessDialog value,
          $Res Function(_$_ShowBuySuccessDialog) then) =
      __$$_ShowBuySuccessDialogCopyWithImpl<$Res>;
  $Res call({bool result, String uuid});
}

/// @nodoc
class __$$_ShowBuySuccessDialogCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$$_ShowBuySuccessDialogCopyWith<$Res> {
  __$$_ShowBuySuccessDialogCopyWithImpl(_$_ShowBuySuccessDialog _value,
      $Res Function(_$_ShowBuySuccessDialog) _then)
      : super(_value, (v) => _then(v as _$_ShowBuySuccessDialog));

  @override
  _$_ShowBuySuccessDialog get _value => super._value as _$_ShowBuySuccessDialog;

  @override
  $Res call({
    Object? result = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$_ShowBuySuccessDialog(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowBuySuccessDialog
    with DiagnosticableTreeMixin
    implements _ShowBuySuccessDialog {
  const _$_ShowBuySuccessDialog({required this.result, required this.uuid});

  @override
  final bool result;
  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.showPaymentSuccessDialog(result: $result, uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationState.showPaymentSuccessDialog'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowBuySuccessDialog &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$_ShowBuySuccessDialogCopyWith<_$_ShowBuySuccessDialog> get copyWith =>
      __$$_ShowBuySuccessDialogCopyWithImpl<_$_ShowBuySuccessDialog>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool result, String uuid)
        showPaymentSuccessDialog,
    required TResult Function(String course, String uuid)
        showCourseCompletedDialog,
    required TResult Function(String course, String uuid)
        showLessonLockedDialog,
    required TResult Function(String uuid) showUpgradeAnonymousUserDialog,
    required TResult Function(String uuid) showNoInternetConnectionDialog,
  }) {
    return showPaymentSuccessDialog(result, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
  }) {
    return showPaymentSuccessDialog?.call(result, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showPaymentSuccessDialog != null) {
      return showPaymentSuccessDialog(result, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowBuySuccessDialog value)
        showPaymentSuccessDialog,
    required TResult Function(_ShowCourseCompletedDialog value)
        showCourseCompletedDialog,
    required TResult Function(_ShowLessonLockedDialog value)
        showLessonLockedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialog value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialog value)
        showNoInternetConnectionDialog,
  }) {
    return showPaymentSuccessDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
  }) {
    return showPaymentSuccessDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showPaymentSuccessDialog != null) {
      return showPaymentSuccessDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowBuySuccessDialog implements ApplicationState {
  const factory _ShowBuySuccessDialog(
      {required final bool result,
      required final String uuid}) = _$_ShowBuySuccessDialog;

  bool get result => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowBuySuccessDialogCopyWith<_$_ShowBuySuccessDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowCourseCompletedDialogCopyWith<$Res> {
  factory _$$_ShowCourseCompletedDialogCopyWith(
          _$_ShowCourseCompletedDialog value,
          $Res Function(_$_ShowCourseCompletedDialog) then) =
      __$$_ShowCourseCompletedDialogCopyWithImpl<$Res>;
  $Res call({String course, String uuid});
}

/// @nodoc
class __$$_ShowCourseCompletedDialogCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$$_ShowCourseCompletedDialogCopyWith<$Res> {
  __$$_ShowCourseCompletedDialogCopyWithImpl(
      _$_ShowCourseCompletedDialog _value,
      $Res Function(_$_ShowCourseCompletedDialog) _then)
      : super(_value, (v) => _then(v as _$_ShowCourseCompletedDialog));

  @override
  _$_ShowCourseCompletedDialog get _value =>
      super._value as _$_ShowCourseCompletedDialog;

  @override
  $Res call({
    Object? course = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$_ShowCourseCompletedDialog(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowCourseCompletedDialog
    with DiagnosticableTreeMixin
    implements _ShowCourseCompletedDialog {
  const _$_ShowCourseCompletedDialog(
      {required this.course, required this.uuid});

  @override
  final String course;
  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.showCourseCompletedDialog(course: $course, uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationState.showCourseCompletedDialog'))
      ..add(DiagnosticsProperty('course', course))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowCourseCompletedDialog &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$_ShowCourseCompletedDialogCopyWith<_$_ShowCourseCompletedDialog>
      get copyWith => __$$_ShowCourseCompletedDialogCopyWithImpl<
          _$_ShowCourseCompletedDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool result, String uuid)
        showPaymentSuccessDialog,
    required TResult Function(String course, String uuid)
        showCourseCompletedDialog,
    required TResult Function(String course, String uuid)
        showLessonLockedDialog,
    required TResult Function(String uuid) showUpgradeAnonymousUserDialog,
    required TResult Function(String uuid) showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog(course, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog?.call(course, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showCourseCompletedDialog != null) {
      return showCourseCompletedDialog(course, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowBuySuccessDialog value)
        showPaymentSuccessDialog,
    required TResult Function(_ShowCourseCompletedDialog value)
        showCourseCompletedDialog,
    required TResult Function(_ShowLessonLockedDialog value)
        showLessonLockedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialog value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialog value)
        showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
  }) {
    return showCourseCompletedDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showCourseCompletedDialog != null) {
      return showCourseCompletedDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowCourseCompletedDialog implements ApplicationState {
  const factory _ShowCourseCompletedDialog(
      {required final String course,
      required final String uuid}) = _$_ShowCourseCompletedDialog;

  String get course => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowCourseCompletedDialogCopyWith<_$_ShowCourseCompletedDialog>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowLessonLockedDialogCopyWith<$Res> {
  factory _$$_ShowLessonLockedDialogCopyWith(_$_ShowLessonLockedDialog value,
          $Res Function(_$_ShowLessonLockedDialog) then) =
      __$$_ShowLessonLockedDialogCopyWithImpl<$Res>;
  $Res call({String course, String uuid});
}

/// @nodoc
class __$$_ShowLessonLockedDialogCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$$_ShowLessonLockedDialogCopyWith<$Res> {
  __$$_ShowLessonLockedDialogCopyWithImpl(_$_ShowLessonLockedDialog _value,
      $Res Function(_$_ShowLessonLockedDialog) _then)
      : super(_value, (v) => _then(v as _$_ShowLessonLockedDialog));

  @override
  _$_ShowLessonLockedDialog get _value =>
      super._value as _$_ShowLessonLockedDialog;

  @override
  $Res call({
    Object? course = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$_ShowLessonLockedDialog(
      course: course == freezed
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowLessonLockedDialog
    with DiagnosticableTreeMixin
    implements _ShowLessonLockedDialog {
  const _$_ShowLessonLockedDialog({required this.course, required this.uuid});

  @override
  final String course;
  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.showLessonLockedDialog(course: $course, uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationState.showLessonLockedDialog'))
      ..add(DiagnosticsProperty('course', course))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowLessonLockedDialog &&
            const DeepCollectionEquality().equals(other.course, course) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(course),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$_ShowLessonLockedDialogCopyWith<_$_ShowLessonLockedDialog> get copyWith =>
      __$$_ShowLessonLockedDialogCopyWithImpl<_$_ShowLessonLockedDialog>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool result, String uuid)
        showPaymentSuccessDialog,
    required TResult Function(String course, String uuid)
        showCourseCompletedDialog,
    required TResult Function(String course, String uuid)
        showLessonLockedDialog,
    required TResult Function(String uuid) showUpgradeAnonymousUserDialog,
    required TResult Function(String uuid) showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog(course, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog?.call(course, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showLessonLockedDialog != null) {
      return showLessonLockedDialog(course, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowBuySuccessDialog value)
        showPaymentSuccessDialog,
    required TResult Function(_ShowCourseCompletedDialog value)
        showCourseCompletedDialog,
    required TResult Function(_ShowLessonLockedDialog value)
        showLessonLockedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialog value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialog value)
        showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
  }) {
    return showLessonLockedDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showLessonLockedDialog != null) {
      return showLessonLockedDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowLessonLockedDialog implements ApplicationState {
  const factory _ShowLessonLockedDialog(
      {required final String course,
      required final String uuid}) = _$_ShowLessonLockedDialog;

  String get course => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowLessonLockedDialogCopyWith<_$_ShowLessonLockedDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowUpgradeAnonymousUserDialogCopyWith<$Res> {
  factory _$$_ShowUpgradeAnonymousUserDialogCopyWith(
          _$_ShowUpgradeAnonymousUserDialog value,
          $Res Function(_$_ShowUpgradeAnonymousUserDialog) then) =
      __$$_ShowUpgradeAnonymousUserDialogCopyWithImpl<$Res>;
  $Res call({String uuid});
}

/// @nodoc
class __$$_ShowUpgradeAnonymousUserDialogCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$$_ShowUpgradeAnonymousUserDialogCopyWith<$Res> {
  __$$_ShowUpgradeAnonymousUserDialogCopyWithImpl(
      _$_ShowUpgradeAnonymousUserDialog _value,
      $Res Function(_$_ShowUpgradeAnonymousUserDialog) _then)
      : super(_value, (v) => _then(v as _$_ShowUpgradeAnonymousUserDialog));

  @override
  _$_ShowUpgradeAnonymousUserDialog get _value =>
      super._value as _$_ShowUpgradeAnonymousUserDialog;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_$_ShowUpgradeAnonymousUserDialog(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowUpgradeAnonymousUserDialog
    with DiagnosticableTreeMixin
    implements _ShowUpgradeAnonymousUserDialog {
  const _$_ShowUpgradeAnonymousUserDialog({required this.uuid});

  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.showUpgradeAnonymousUserDialog(uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationState.showUpgradeAnonymousUserDialog'))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowUpgradeAnonymousUserDialog &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$_ShowUpgradeAnonymousUserDialogCopyWith<_$_ShowUpgradeAnonymousUserDialog>
      get copyWith => __$$_ShowUpgradeAnonymousUserDialogCopyWithImpl<
          _$_ShowUpgradeAnonymousUserDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool result, String uuid)
        showPaymentSuccessDialog,
    required TResult Function(String course, String uuid)
        showCourseCompletedDialog,
    required TResult Function(String course, String uuid)
        showLessonLockedDialog,
    required TResult Function(String uuid) showUpgradeAnonymousUserDialog,
    required TResult Function(String uuid) showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showUpgradeAnonymousUserDialog != null) {
      return showUpgradeAnonymousUserDialog(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowBuySuccessDialog value)
        showPaymentSuccessDialog,
    required TResult Function(_ShowCourseCompletedDialog value)
        showCourseCompletedDialog,
    required TResult Function(_ShowLessonLockedDialog value)
        showLessonLockedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialog value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialog value)
        showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
  }) {
    return showUpgradeAnonymousUserDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showUpgradeAnonymousUserDialog != null) {
      return showUpgradeAnonymousUserDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowUpgradeAnonymousUserDialog implements ApplicationState {
  const factory _ShowUpgradeAnonymousUserDialog({required final String uuid}) =
      _$_ShowUpgradeAnonymousUserDialog;

  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowUpgradeAnonymousUserDialogCopyWith<_$_ShowUpgradeAnonymousUserDialog>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowNoInternetConnectionDialogCopyWith<$Res> {
  factory _$$_ShowNoInternetConnectionDialogCopyWith(
          _$_ShowNoInternetConnectionDialog value,
          $Res Function(_$_ShowNoInternetConnectionDialog) then) =
      __$$_ShowNoInternetConnectionDialogCopyWithImpl<$Res>;
  $Res call({String uuid});
}

/// @nodoc
class __$$_ShowNoInternetConnectionDialogCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res>
    implements _$$_ShowNoInternetConnectionDialogCopyWith<$Res> {
  __$$_ShowNoInternetConnectionDialogCopyWithImpl(
      _$_ShowNoInternetConnectionDialog _value,
      $Res Function(_$_ShowNoInternetConnectionDialog) _then)
      : super(_value, (v) => _then(v as _$_ShowNoInternetConnectionDialog));

  @override
  _$_ShowNoInternetConnectionDialog get _value =>
      super._value as _$_ShowNoInternetConnectionDialog;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_$_ShowNoInternetConnectionDialog(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowNoInternetConnectionDialog
    with DiagnosticableTreeMixin
    implements _ShowNoInternetConnectionDialog {
  const _$_ShowNoInternetConnectionDialog({required this.uuid});

  @override
  final String uuid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicationState.showNoInternetConnectionDialog(uuid: $uuid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ApplicationState.showNoInternetConnectionDialog'))
      ..add(DiagnosticsProperty('uuid', uuid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowNoInternetConnectionDialog &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$_ShowNoInternetConnectionDialogCopyWith<_$_ShowNoInternetConnectionDialog>
      get copyWith => __$$_ShowNoInternetConnectionDialogCopyWithImpl<
          _$_ShowNoInternetConnectionDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool result, String uuid)
        showPaymentSuccessDialog,
    required TResult Function(String course, String uuid)
        showCourseCompletedDialog,
    required TResult Function(String course, String uuid)
        showLessonLockedDialog,
    required TResult Function(String uuid) showUpgradeAnonymousUserDialog,
    required TResult Function(String uuid) showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool result, String uuid)? showPaymentSuccessDialog,
    TResult Function(String course, String uuid)? showCourseCompletedDialog,
    TResult Function(String course, String uuid)? showLessonLockedDialog,
    TResult Function(String uuid)? showUpgradeAnonymousUserDialog,
    TResult Function(String uuid)? showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showNoInternetConnectionDialog != null) {
      return showNoInternetConnectionDialog(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowBuySuccessDialog value)
        showPaymentSuccessDialog,
    required TResult Function(_ShowCourseCompletedDialog value)
        showCourseCompletedDialog,
    required TResult Function(_ShowLessonLockedDialog value)
        showLessonLockedDialog,
    required TResult Function(_ShowUpgradeAnonymousUserDialog value)
        showUpgradeAnonymousUserDialog,
    required TResult Function(_ShowNoInternetConnectionDialog value)
        showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
  }) {
    return showNoInternetConnectionDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowBuySuccessDialog value)? showPaymentSuccessDialog,
    TResult Function(_ShowCourseCompletedDialog value)?
        showCourseCompletedDialog,
    TResult Function(_ShowLessonLockedDialog value)? showLessonLockedDialog,
    TResult Function(_ShowUpgradeAnonymousUserDialog value)?
        showUpgradeAnonymousUserDialog,
    TResult Function(_ShowNoInternetConnectionDialog value)?
        showNoInternetConnectionDialog,
    required TResult orElse(),
  }) {
    if (showNoInternetConnectionDialog != null) {
      return showNoInternetConnectionDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowNoInternetConnectionDialog implements ApplicationState {
  const factory _ShowNoInternetConnectionDialog({required final String uuid}) =
      _$_ShowNoInternetConnectionDialog;

  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShowNoInternetConnectionDialogCopyWith<_$_ShowNoInternetConnectionDialog>
      get copyWith => throw _privateConstructorUsedError;
}
