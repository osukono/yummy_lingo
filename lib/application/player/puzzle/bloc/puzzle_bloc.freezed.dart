// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'puzzle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PuzzleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chunk> chunks) load,
    required TResult Function(Chunk chunk) chunkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Chunk> chunks)? load,
    TResult Function(Chunk chunk)? chunkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chunk> chunks)? load,
    TResult Function(Chunk chunk)? chunkPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PuzzleLoadEvent value) load,
    required TResult Function(_PuzzleChunkPressedEvent value) chunkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PuzzleLoadEvent value)? load,
    TResult Function(_PuzzleChunkPressedEvent value)? chunkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PuzzleLoadEvent value)? load,
    TResult Function(_PuzzleChunkPressedEvent value)? chunkPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleEventCopyWith<$Res> {
  factory $PuzzleEventCopyWith(
          PuzzleEvent value, $Res Function(PuzzleEvent) then) =
      _$PuzzleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PuzzleEventCopyWithImpl<$Res> implements $PuzzleEventCopyWith<$Res> {
  _$PuzzleEventCopyWithImpl(this._value, this._then);

  final PuzzleEvent _value;
  // ignore: unused_field
  final $Res Function(PuzzleEvent) _then;
}

/// @nodoc
abstract class _$$_PuzzleLoadEventCopyWith<$Res> {
  factory _$$_PuzzleLoadEventCopyWith(
          _$_PuzzleLoadEvent value, $Res Function(_$_PuzzleLoadEvent) then) =
      __$$_PuzzleLoadEventCopyWithImpl<$Res>;
  $Res call({List<Chunk> chunks});
}

/// @nodoc
class __$$_PuzzleLoadEventCopyWithImpl<$Res>
    extends _$PuzzleEventCopyWithImpl<$Res>
    implements _$$_PuzzleLoadEventCopyWith<$Res> {
  __$$_PuzzleLoadEventCopyWithImpl(
      _$_PuzzleLoadEvent _value, $Res Function(_$_PuzzleLoadEvent) _then)
      : super(_value, (v) => _then(v as _$_PuzzleLoadEvent));

  @override
  _$_PuzzleLoadEvent get _value => super._value as _$_PuzzleLoadEvent;

  @override
  $Res call({
    Object? chunks = freezed,
  }) {
    return _then(_$_PuzzleLoadEvent(
      chunks: chunks == freezed
          ? _value._chunks
          : chunks // ignore: cast_nullable_to_non_nullable
              as List<Chunk>,
    ));
  }
}

/// @nodoc

class _$_PuzzleLoadEvent
    with DiagnosticableTreeMixin
    implements _PuzzleLoadEvent {
  const _$_PuzzleLoadEvent({required final List<Chunk> chunks})
      : _chunks = chunks;

  final List<Chunk> _chunks;
  @override
  List<Chunk> get chunks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chunks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PuzzleEvent.load(chunks: $chunks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PuzzleEvent.load'))
      ..add(DiagnosticsProperty('chunks', chunks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PuzzleLoadEvent &&
            const DeepCollectionEquality().equals(other._chunks, _chunks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chunks));

  @JsonKey(ignore: true)
  @override
  _$$_PuzzleLoadEventCopyWith<_$_PuzzleLoadEvent> get copyWith =>
      __$$_PuzzleLoadEventCopyWithImpl<_$_PuzzleLoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chunk> chunks) load,
    required TResult Function(Chunk chunk) chunkPressed,
  }) {
    return load(chunks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Chunk> chunks)? load,
    TResult Function(Chunk chunk)? chunkPressed,
  }) {
    return load?.call(chunks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chunk> chunks)? load,
    TResult Function(Chunk chunk)? chunkPressed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(chunks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PuzzleLoadEvent value) load,
    required TResult Function(_PuzzleChunkPressedEvent value) chunkPressed,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PuzzleLoadEvent value)? load,
    TResult Function(_PuzzleChunkPressedEvent value)? chunkPressed,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PuzzleLoadEvent value)? load,
    TResult Function(_PuzzleChunkPressedEvent value)? chunkPressed,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _PuzzleLoadEvent implements PuzzleEvent {
  const factory _PuzzleLoadEvent({required final List<Chunk> chunks}) =
      _$_PuzzleLoadEvent;

  List<Chunk> get chunks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PuzzleLoadEventCopyWith<_$_PuzzleLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PuzzleChunkPressedEventCopyWith<$Res> {
  factory _$$_PuzzleChunkPressedEventCopyWith(_$_PuzzleChunkPressedEvent value,
          $Res Function(_$_PuzzleChunkPressedEvent) then) =
      __$$_PuzzleChunkPressedEventCopyWithImpl<$Res>;
  $Res call({Chunk chunk});
}

/// @nodoc
class __$$_PuzzleChunkPressedEventCopyWithImpl<$Res>
    extends _$PuzzleEventCopyWithImpl<$Res>
    implements _$$_PuzzleChunkPressedEventCopyWith<$Res> {
  __$$_PuzzleChunkPressedEventCopyWithImpl(_$_PuzzleChunkPressedEvent _value,
      $Res Function(_$_PuzzleChunkPressedEvent) _then)
      : super(_value, (v) => _then(v as _$_PuzzleChunkPressedEvent));

  @override
  _$_PuzzleChunkPressedEvent get _value =>
      super._value as _$_PuzzleChunkPressedEvent;

  @override
  $Res call({
    Object? chunk = freezed,
  }) {
    return _then(_$_PuzzleChunkPressedEvent(
      chunk: chunk == freezed
          ? _value.chunk
          : chunk // ignore: cast_nullable_to_non_nullable
              as Chunk,
    ));
  }
}

/// @nodoc

class _$_PuzzleChunkPressedEvent
    with DiagnosticableTreeMixin
    implements _PuzzleChunkPressedEvent {
  const _$_PuzzleChunkPressedEvent({required this.chunk});

  @override
  final Chunk chunk;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PuzzleEvent.chunkPressed(chunk: $chunk)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PuzzleEvent.chunkPressed'))
      ..add(DiagnosticsProperty('chunk', chunk));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PuzzleChunkPressedEvent &&
            const DeepCollectionEquality().equals(other.chunk, chunk));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chunk));

  @JsonKey(ignore: true)
  @override
  _$$_PuzzleChunkPressedEventCopyWith<_$_PuzzleChunkPressedEvent>
      get copyWith =>
          __$$_PuzzleChunkPressedEventCopyWithImpl<_$_PuzzleChunkPressedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chunk> chunks) load,
    required TResult Function(Chunk chunk) chunkPressed,
  }) {
    return chunkPressed(chunk);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Chunk> chunks)? load,
    TResult Function(Chunk chunk)? chunkPressed,
  }) {
    return chunkPressed?.call(chunk);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chunk> chunks)? load,
    TResult Function(Chunk chunk)? chunkPressed,
    required TResult orElse(),
  }) {
    if (chunkPressed != null) {
      return chunkPressed(chunk);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PuzzleLoadEvent value) load,
    required TResult Function(_PuzzleChunkPressedEvent value) chunkPressed,
  }) {
    return chunkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PuzzleLoadEvent value)? load,
    TResult Function(_PuzzleChunkPressedEvent value)? chunkPressed,
  }) {
    return chunkPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PuzzleLoadEvent value)? load,
    TResult Function(_PuzzleChunkPressedEvent value)? chunkPressed,
    required TResult orElse(),
  }) {
    if (chunkPressed != null) {
      return chunkPressed(this);
    }
    return orElse();
  }
}

abstract class _PuzzleChunkPressedEvent implements PuzzleEvent {
  const factory _PuzzleChunkPressedEvent({required final Chunk chunk}) =
      _$_PuzzleChunkPressedEvent;

  Chunk get chunk => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PuzzleChunkPressedEventCopyWith<_$_PuzzleChunkPressedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PuzzleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)
        $default, {
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)?
        $default, {
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)?
        $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleDataState value) $default, {
    required TResult Function(_PuzzleInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleDataState value)? $default, {
    TResult Function(_PuzzleInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleDataState value)? $default, {
    TResult Function(_PuzzleInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleStateCopyWith<$Res> {
  factory $PuzzleStateCopyWith(
          PuzzleState value, $Res Function(PuzzleState) then) =
      _$PuzzleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PuzzleStateCopyWithImpl<$Res> implements $PuzzleStateCopyWith<$Res> {
  _$PuzzleStateCopyWithImpl(this._value, this._then);

  final PuzzleState _value;
  // ignore: unused_field
  final $Res Function(PuzzleState) _then;
}

/// @nodoc
abstract class _$$PuzzleDataStateCopyWith<$Res> {
  factory _$$PuzzleDataStateCopyWith(
          _$PuzzleDataState value, $Res Function(_$PuzzleDataState) then) =
      __$$PuzzleDataStateCopyWithImpl<$Res>;
  $Res call(
      {bool solved,
      String text,
      List<Chunk> chunks,
      Option<Chunk> errorOption});
}

/// @nodoc
class __$$PuzzleDataStateCopyWithImpl<$Res>
    extends _$PuzzleStateCopyWithImpl<$Res>
    implements _$$PuzzleDataStateCopyWith<$Res> {
  __$$PuzzleDataStateCopyWithImpl(
      _$PuzzleDataState _value, $Res Function(_$PuzzleDataState) _then)
      : super(_value, (v) => _then(v as _$PuzzleDataState));

  @override
  _$PuzzleDataState get _value => super._value as _$PuzzleDataState;

  @override
  $Res call({
    Object? solved = freezed,
    Object? text = freezed,
    Object? chunks = freezed,
    Object? errorOption = freezed,
  }) {
    return _then(_$PuzzleDataState(
      solved: solved == freezed
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as bool,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chunks: chunks == freezed
          ? _value._chunks
          : chunks // ignore: cast_nullable_to_non_nullable
              as List<Chunk>,
      errorOption: errorOption == freezed
          ? _value.errorOption
          : errorOption // ignore: cast_nullable_to_non_nullable
              as Option<Chunk>,
    ));
  }
}

/// @nodoc

class _$PuzzleDataState
    with DiagnosticableTreeMixin
    implements PuzzleDataState {
  const _$PuzzleDataState(
      {required this.solved,
      required this.text,
      required final List<Chunk> chunks,
      required this.errorOption})
      : _chunks = chunks;

  @override
  final bool solved;
  @override
  final String text;
  final List<Chunk> _chunks;
  @override
  List<Chunk> get chunks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chunks);
  }

  @override
  final Option<Chunk> errorOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PuzzleState(solved: $solved, text: $text, chunks: $chunks, errorOption: $errorOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PuzzleState'))
      ..add(DiagnosticsProperty('solved', solved))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('chunks', chunks))
      ..add(DiagnosticsProperty('errorOption', errorOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PuzzleDataState &&
            const DeepCollectionEquality().equals(other.solved, solved) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other._chunks, _chunks) &&
            const DeepCollectionEquality()
                .equals(other.errorOption, errorOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(solved),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_chunks),
      const DeepCollectionEquality().hash(errorOption));

  @JsonKey(ignore: true)
  @override
  _$$PuzzleDataStateCopyWith<_$PuzzleDataState> get copyWith =>
      __$$PuzzleDataStateCopyWithImpl<_$PuzzleDataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)
        $default, {
    required TResult Function() initial,
  }) {
    return $default(solved, text, chunks, errorOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)?
        $default, {
    TResult Function()? initial,
  }) {
    return $default?.call(solved, text, chunks, errorOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)?
        $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(solved, text, chunks, errorOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleDataState value) $default, {
    required TResult Function(_PuzzleInitialState value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleDataState value)? $default, {
    TResult Function(_PuzzleInitialState value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleDataState value)? $default, {
    TResult Function(_PuzzleInitialState value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PuzzleDataState implements PuzzleState {
  const factory PuzzleDataState(
      {required final bool solved,
      required final String text,
      required final List<Chunk> chunks,
      required final Option<Chunk> errorOption}) = _$PuzzleDataState;

  bool get solved => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<Chunk> get chunks => throw _privateConstructorUsedError;
  Option<Chunk> get errorOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PuzzleDataStateCopyWith<_$PuzzleDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PuzzleInitialStateCopyWith<$Res> {
  factory _$$_PuzzleInitialStateCopyWith(_$_PuzzleInitialState value,
          $Res Function(_$_PuzzleInitialState) then) =
      __$$_PuzzleInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PuzzleInitialStateCopyWithImpl<$Res>
    extends _$PuzzleStateCopyWithImpl<$Res>
    implements _$$_PuzzleInitialStateCopyWith<$Res> {
  __$$_PuzzleInitialStateCopyWithImpl(
      _$_PuzzleInitialState _value, $Res Function(_$_PuzzleInitialState) _then)
      : super(_value, (v) => _then(v as _$_PuzzleInitialState));

  @override
  _$_PuzzleInitialState get _value => super._value as _$_PuzzleInitialState;
}

/// @nodoc

class _$_PuzzleInitialState
    with DiagnosticableTreeMixin
    implements _PuzzleInitialState {
  const _$_PuzzleInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PuzzleState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PuzzleState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PuzzleInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)
        $default, {
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)?
        $default, {
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool solved, String text, List<Chunk> chunks,
            Option<Chunk> errorOption)?
        $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PuzzleDataState value) $default, {
    required TResult Function(_PuzzleInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(PuzzleDataState value)? $default, {
    TResult Function(_PuzzleInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PuzzleDataState value)? $default, {
    TResult Function(_PuzzleInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PuzzleInitialState implements PuzzleState {
  const factory _PuzzleInitialState() = _$_PuzzleInitialState;
}
