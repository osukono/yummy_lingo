// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() upgradeAnonymousUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
    required TResult Function(_SignedInEvent value) signedIn,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_UpgradeAnonymousUserEvent value)
        upgradeAnonymousUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_AuthCheckRequestedEventCopyWith<$Res> {
  factory _$$_AuthCheckRequestedEventCopyWith(_$_AuthCheckRequestedEvent value,
          $Res Function(_$_AuthCheckRequestedEvent) then) =
      __$$_AuthCheckRequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthCheckRequestedEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_AuthCheckRequestedEventCopyWith<$Res> {
  __$$_AuthCheckRequestedEventCopyWithImpl(_$_AuthCheckRequestedEvent _value,
      $Res Function(_$_AuthCheckRequestedEvent) _then)
      : super(_value, (v) => _then(v as _$_AuthCheckRequestedEvent));

  @override
  _$_AuthCheckRequestedEvent get _value =>
      super._value as _$_AuthCheckRequestedEvent;
}

/// @nodoc

class _$_AuthCheckRequestedEvent
    with DiagnosticableTreeMixin
    implements _AuthCheckRequestedEvent {
  const _$_AuthCheckRequestedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.authCheckRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthCheckRequestedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() upgradeAnonymousUser,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
    required TResult Function(_SignedInEvent value) signedIn,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_UpgradeAnonymousUserEvent value)
        upgradeAnonymousUser,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequestedEvent implements AuthEvent {
  const factory _AuthCheckRequestedEvent() = _$_AuthCheckRequestedEvent;
}

/// @nodoc
abstract class _$$_SignedInEventCopyWith<$Res> {
  factory _$$_SignedInEventCopyWith(
          _$_SignedInEvent value, $Res Function(_$_SignedInEvent) then) =
      __$$_SignedInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedInEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignedInEventCopyWith<$Res> {
  __$$_SignedInEventCopyWithImpl(
      _$_SignedInEvent _value, $Res Function(_$_SignedInEvent) _then)
      : super(_value, (v) => _then(v as _$_SignedInEvent));

  @override
  _$_SignedInEvent get _value => super._value as _$_SignedInEvent;
}

/// @nodoc

class _$_SignedInEvent with DiagnosticableTreeMixin implements _SignedInEvent {
  const _$_SignedInEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signedIn'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() upgradeAnonymousUser,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
    required TResult Function(_SignedInEvent value) signedIn,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_UpgradeAnonymousUserEvent value)
        upgradeAnonymousUser,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedInEvent implements AuthEvent {
  const factory _SignedInEvent() = _$_SignedInEvent;
}

/// @nodoc
abstract class _$$_SignedOutEventCopyWith<$Res> {
  factory _$$_SignedOutEventCopyWith(
          _$_SignedOutEvent value, $Res Function(_$_SignedOutEvent) then) =
      __$$_SignedOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignedOutEventCopyWith<$Res> {
  __$$_SignedOutEventCopyWithImpl(
      _$_SignedOutEvent _value, $Res Function(_$_SignedOutEvent) _then)
      : super(_value, (v) => _then(v as _$_SignedOutEvent));

  @override
  _$_SignedOutEvent get _value => super._value as _$_SignedOutEvent;
}

/// @nodoc

class _$_SignedOutEvent
    with DiagnosticableTreeMixin
    implements _SignedOutEvent {
  const _$_SignedOutEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() upgradeAnonymousUser,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
    required TResult Function(_SignedInEvent value) signedIn,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_UpgradeAnonymousUserEvent value)
        upgradeAnonymousUser,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOutEvent implements AuthEvent {
  const factory _SignedOutEvent() = _$_SignedOutEvent;
}

/// @nodoc
abstract class _$$_UpgradeAnonymousUserEventCopyWith<$Res> {
  factory _$$_UpgradeAnonymousUserEventCopyWith(
          _$_UpgradeAnonymousUserEvent value,
          $Res Function(_$_UpgradeAnonymousUserEvent) then) =
      __$$_UpgradeAnonymousUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpgradeAnonymousUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UpgradeAnonymousUserEventCopyWith<$Res> {
  __$$_UpgradeAnonymousUserEventCopyWithImpl(
      _$_UpgradeAnonymousUserEvent _value,
      $Res Function(_$_UpgradeAnonymousUserEvent) _then)
      : super(_value, (v) => _then(v as _$_UpgradeAnonymousUserEvent));

  @override
  _$_UpgradeAnonymousUserEvent get _value =>
      super._value as _$_UpgradeAnonymousUserEvent;
}

/// @nodoc

class _$_UpgradeAnonymousUserEvent
    with DiagnosticableTreeMixin
    implements _UpgradeAnonymousUserEvent {
  const _$_UpgradeAnonymousUserEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.upgradeAnonymousUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthEvent.upgradeAnonymousUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpgradeAnonymousUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequested,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() upgradeAnonymousUser,
  }) {
    return upgradeAnonymousUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
  }) {
    return upgradeAnonymousUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequested,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (upgradeAnonymousUser != null) {
      return upgradeAnonymousUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
    required TResult Function(_SignedInEvent value) signedIn,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_UpgradeAnonymousUserEvent value)
        upgradeAnonymousUser,
  }) {
    return upgradeAnonymousUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
  }) {
    return upgradeAnonymousUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    TResult Function(_SignedInEvent value)? signedIn,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_UpgradeAnonymousUserEvent value)? upgradeAnonymousUser,
    required TResult orElse(),
  }) {
    if (upgradeAnonymousUser != null) {
      return upgradeAnonymousUser(this);
    }
    return orElse();
  }
}

abstract class _UpgradeAnonymousUserEvent implements AuthEvent {
  const factory _UpgradeAnonymousUserEvent() = _$_UpgradeAnonymousUserEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.initial'));
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
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
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
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, (v) => _then(v as _$_Authenticated));

  @override
  _$_Authenticated get _value => super._value as _$_Authenticated;
}

/// @nodoc

class _$_Authenticated with DiagnosticableTreeMixin implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.authenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$_Unauthenticated));

  @override
  _$_Unauthenticated get _value => super._value as _$_Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated
    with DiagnosticableTreeMixin
    implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}
