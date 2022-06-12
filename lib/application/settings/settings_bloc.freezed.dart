// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(Language language) languageChanged,
    required TResult Function(Language translation) translationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_LanguageChangedEvent value) languageChanged,
    required TResult Function(_TranslationChangedEvent value)
        translationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$$_LoadDataEventCopyWith<$Res> {
  factory _$$_LoadDataEventCopyWith(
          _$_LoadDataEvent value, $Res Function(_$_LoadDataEvent) then) =
      __$$_LoadDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadDataEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$_LoadDataEventCopyWith<$Res> {
  __$$_LoadDataEventCopyWithImpl(
      _$_LoadDataEvent _value, $Res Function(_$_LoadDataEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadDataEvent));

  @override
  _$_LoadDataEvent get _value => super._value as _$_LoadDataEvent;
}

/// @nodoc

class _$_LoadDataEvent implements _LoadDataEvent {
  const _$_LoadDataEvent();

  @override
  String toString() {
    return 'SettingsEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(Language language) languageChanged,
    required TResult Function(Language translation) translationChanged,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_LanguageChangedEvent value) languageChanged,
    required TResult Function(_TranslationChangedEvent value)
        translationChanged,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadDataEvent implements SettingsEvent {
  const factory _LoadDataEvent() = _$_LoadDataEvent;
}

/// @nodoc
abstract class _$$_LanguageChangedEventCopyWith<$Res> {
  factory _$$_LanguageChangedEventCopyWith(_$_LanguageChangedEvent value,
          $Res Function(_$_LanguageChangedEvent) then) =
      __$$_LanguageChangedEventCopyWithImpl<$Res>;
  $Res call({Language language});
}

/// @nodoc
class __$$_LanguageChangedEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$_LanguageChangedEventCopyWith<$Res> {
  __$$_LanguageChangedEventCopyWithImpl(_$_LanguageChangedEvent _value,
      $Res Function(_$_LanguageChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_LanguageChangedEvent));

  @override
  _$_LanguageChangedEvent get _value => super._value as _$_LanguageChangedEvent;

  @override
  $Res call({
    Object? language = freezed,
  }) {
    return _then(_$_LanguageChangedEvent(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$_LanguageChangedEvent implements _LanguageChangedEvent {
  const _$_LanguageChangedEvent({required this.language});

  @override
  final Language language;

  @override
  String toString() {
    return 'SettingsEvent.languageChanged(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageChangedEvent &&
            const DeepCollectionEquality().equals(other.language, language));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(language));

  @JsonKey(ignore: true)
  @override
  _$$_LanguageChangedEventCopyWith<_$_LanguageChangedEvent> get copyWith =>
      __$$_LanguageChangedEventCopyWithImpl<_$_LanguageChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(Language language) languageChanged,
    required TResult Function(Language translation) translationChanged,
  }) {
    return languageChanged(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
  }) {
    return languageChanged?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_LanguageChangedEvent value) languageChanged,
    required TResult Function(_TranslationChangedEvent value)
        translationChanged,
  }) {
    return languageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
  }) {
    return languageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(this);
    }
    return orElse();
  }
}

abstract class _LanguageChangedEvent implements SettingsEvent {
  const factory _LanguageChangedEvent({required final Language language}) =
      _$_LanguageChangedEvent;

  Language get language => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LanguageChangedEventCopyWith<_$_LanguageChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TranslationChangedEventCopyWith<$Res> {
  factory _$$_TranslationChangedEventCopyWith(_$_TranslationChangedEvent value,
          $Res Function(_$_TranslationChangedEvent) then) =
      __$$_TranslationChangedEventCopyWithImpl<$Res>;
  $Res call({Language translation});
}

/// @nodoc
class __$$_TranslationChangedEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$_TranslationChangedEventCopyWith<$Res> {
  __$$_TranslationChangedEventCopyWithImpl(_$_TranslationChangedEvent _value,
      $Res Function(_$_TranslationChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_TranslationChangedEvent));

  @override
  _$_TranslationChangedEvent get _value =>
      super._value as _$_TranslationChangedEvent;

  @override
  $Res call({
    Object? translation = freezed,
  }) {
    return _then(_$_TranslationChangedEvent(
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$_TranslationChangedEvent implements _TranslationChangedEvent {
  const _$_TranslationChangedEvent({required this.translation});

  @override
  final Language translation;

  @override
  String toString() {
    return 'SettingsEvent.translationChanged(translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TranslationChangedEvent &&
            const DeepCollectionEquality()
                .equals(other.translation, translation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(translation));

  @JsonKey(ignore: true)
  @override
  _$$_TranslationChangedEventCopyWith<_$_TranslationChangedEvent>
      get copyWith =>
          __$$_TranslationChangedEventCopyWithImpl<_$_TranslationChangedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(Language language) languageChanged,
    required TResult Function(Language translation) translationChanged,
  }) {
    return translationChanged(translation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
  }) {
    return translationChanged?.call(translation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(Language language)? languageChanged,
    TResult Function(Language translation)? translationChanged,
    required TResult orElse(),
  }) {
    if (translationChanged != null) {
      return translationChanged(translation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDataEvent value) loadData,
    required TResult Function(_LanguageChangedEvent value) languageChanged,
    required TResult Function(_TranslationChangedEvent value)
        translationChanged,
  }) {
    return translationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
  }) {
    return translationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDataEvent value)? loadData,
    TResult Function(_LanguageChangedEvent value)? languageChanged,
    TResult Function(_TranslationChangedEvent value)? translationChanged,
    required TResult orElse(),
  }) {
    if (translationChanged != null) {
      return translationChanged(this);
    }
    return orElse();
  }
}

abstract class _TranslationChangedEvent implements SettingsEvent {
  const factory _TranslationChangedEvent(
      {required final Language translation}) = _$_TranslationChangedEvent;

  Language get translation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TranslationChangedEventCopyWith<_$_TranslationChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)
        $default, {
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)?
        $default, {
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)?
        $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SettingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)
        $default, {
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)?
        $default, {
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)?
        $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SettingsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  $Res call({Language language, Language translation, bool initial});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? language = freezed,
    Object? translation = freezed,
    Object? initial = freezed,
  }) {
    return _then(_$Data(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Language,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(
      {required this.language,
      required this.translation,
      required this.initial});

  @override
  final Language language;
  @override
  final Language translation;
  @override
  final bool initial;

  @override
  String toString() {
    return 'SettingsState(language: $language, translation: $translation, initial: $initial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.translation, translation) &&
            const DeepCollectionEquality().equals(other.initial, initial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(translation),
      const DeepCollectionEquality().hash(initial));

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)
        $default, {
    required TResult Function() loading,
  }) {
    return $default(language, translation, initial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)?
        $default, {
    TResult Function()? loading,
  }) {
    return $default?.call(language, translation, initial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Language language, Language translation, bool initial)?
        $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(language, translation, initial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data value) $default, {
    required TResult Function(Loading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data value)? $default, {
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements SettingsState {
  const factory Data(
      {required final Language language,
      required final Language translation,
      required final bool initial}) = _$Data;

  Language get language => throw _privateConstructorUsedError;
  Language get translation => throw _privateConstructorUsedError;
  bool get initial => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}
