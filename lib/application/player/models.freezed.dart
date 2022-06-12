// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentLesson {
  int get order => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int order, int part) part,
    required TResult Function(int order) review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int order, int part)? part,
    TResult Function(int order)? review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int order, int part)? part,
    TResult Function(int order)? review,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Part value) part,
    required TResult Function(Review value) review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Part value)? part,
    TResult Function(Review value)? review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Part value)? part,
    TResult Function(Review value)? review,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentLessonCopyWith<CurrentLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentLessonCopyWith<$Res> {
  factory $CurrentLessonCopyWith(
          CurrentLesson value, $Res Function(CurrentLesson) then) =
      _$CurrentLessonCopyWithImpl<$Res>;
  $Res call({int order});
}

/// @nodoc
class _$CurrentLessonCopyWithImpl<$Res>
    implements $CurrentLessonCopyWith<$Res> {
  _$CurrentLessonCopyWithImpl(this._value, this._then);

  final CurrentLesson _value;
  // ignore: unused_field
  final $Res Function(CurrentLesson) _then;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$PartCopyWith<$Res> implements $CurrentLessonCopyWith<$Res> {
  factory _$$PartCopyWith(_$Part value, $Res Function(_$Part) then) =
      __$$PartCopyWithImpl<$Res>;
  @override
  $Res call({int order, int part});
}

/// @nodoc
class __$$PartCopyWithImpl<$Res> extends _$CurrentLessonCopyWithImpl<$Res>
    implements _$$PartCopyWith<$Res> {
  __$$PartCopyWithImpl(_$Part _value, $Res Function(_$Part) _then)
      : super(_value, (v) => _then(v as _$Part));

  @override
  _$Part get _value => super._value as _$Part;

  @override
  $Res call({
    Object? order = freezed,
    Object? part = freezed,
  }) {
    return _then(_$Part(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      part: part == freezed
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Part implements Part {
  const _$Part({required this.order, required this.part});

  @override
  final int order;
  @override
  final int part;

  @override
  String toString() {
    return 'CurrentLesson.part(order: $order, part: $part)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Part &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.part, part));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(part));

  @JsonKey(ignore: true)
  @override
  _$$PartCopyWith<_$Part> get copyWith =>
      __$$PartCopyWithImpl<_$Part>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int order, int part) part,
    required TResult Function(int order) review,
  }) {
    return part(order, this.part);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int order, int part)? part,
    TResult Function(int order)? review,
  }) {
    return part?.call(order, this.part);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int order, int part)? part,
    TResult Function(int order)? review,
    required TResult orElse(),
  }) {
    if (part != null) {
      return part(order, this.part);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Part value) part,
    required TResult Function(Review value) review,
  }) {
    return part(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Part value)? part,
    TResult Function(Review value)? review,
  }) {
    return part?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Part value)? part,
    TResult Function(Review value)? review,
    required TResult orElse(),
  }) {
    if (part != null) {
      return part(this);
    }
    return orElse();
  }
}

abstract class Part implements CurrentLesson {
  const factory Part({required final int order, required final int part}) =
      _$Part;

  @override
  int get order => throw _privateConstructorUsedError;
  int get part => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PartCopyWith<_$Part> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewCopyWith<$Res> implements $CurrentLessonCopyWith<$Res> {
  factory _$$ReviewCopyWith(_$Review value, $Res Function(_$Review) then) =
      __$$ReviewCopyWithImpl<$Res>;
  @override
  $Res call({int order});
}

/// @nodoc
class __$$ReviewCopyWithImpl<$Res> extends _$CurrentLessonCopyWithImpl<$Res>
    implements _$$ReviewCopyWith<$Res> {
  __$$ReviewCopyWithImpl(_$Review _value, $Res Function(_$Review) _then)
      : super(_value, (v) => _then(v as _$Review));

  @override
  _$Review get _value => super._value as _$Review;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_$Review(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Review implements Review {
  const _$Review({required this.order});

  @override
  final int order;

  @override
  String toString() {
    return 'CurrentLesson.review(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Review &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$$ReviewCopyWith<_$Review> get copyWith =>
      __$$ReviewCopyWithImpl<_$Review>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int order, int part) part,
    required TResult Function(int order) review,
  }) {
    return review(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int order, int part)? part,
    TResult Function(int order)? review,
  }) {
    return review?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int order, int part)? part,
    TResult Function(int order)? review,
    required TResult orElse(),
  }) {
    if (review != null) {
      return review(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Part value) part,
    required TResult Function(Review value) review,
  }) {
    return review(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Part value)? part,
    TResult Function(Review value)? review,
  }) {
    return review?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Part value)? part,
    TResult Function(Review value)? review,
    required TResult orElse(),
  }) {
    if (review != null) {
      return review(this);
    }
    return orElse();
  }
}

abstract class Review implements CurrentLesson {
  const factory Review({required final int order}) = _$Review;

  @override
  int get order => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ReviewCopyWith<_$Review> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Command {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandCopyWith<$Res> {
  factory $CommandCopyWith(Command value, $Res Function(Command) then) =
      _$CommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommandCopyWithImpl<$Res> implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._value, this._then);

  final Command _value;
  // ignore: unused_field
  final $Res Function(Command) _then;
}

/// @nodoc
abstract class _$$CommandDialogCopyWith<$Res> {
  factory _$$CommandDialogCopyWith(
          _$CommandDialog value, $Res Function(_$CommandDialog) then) =
      __$$CommandDialogCopyWithImpl<$Res>;
  $Res call({String text, List<DialogOption> options, bool interaction});
}

/// @nodoc
class __$$CommandDialogCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$CommandDialogCopyWith<$Res> {
  __$$CommandDialogCopyWithImpl(
      _$CommandDialog _value, $Res Function(_$CommandDialog) _then)
      : super(_value, (v) => _then(v as _$CommandDialog));

  @override
  _$CommandDialog get _value => super._value as _$CommandDialog;

  @override
  $Res call({
    Object? text = freezed,
    Object? options = freezed,
    Object? interaction = freezed,
  }) {
    return _then(_$CommandDialog(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<DialogOption>,
      interaction: interaction == freezed
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommandDialog implements CommandDialog {
  const _$CommandDialog(
      {required this.text,
      required final List<DialogOption> options,
      required this.interaction})
      : _options = options;

  @override
  final String text;
  final List<DialogOption> _options;
  @override
  List<DialogOption> get options {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final bool interaction;

  @override
  String toString() {
    return 'Command.dialog(text: $text, options: $options, interaction: $interaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandDialog &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality()
                .equals(other.interaction, interaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(interaction));

  @JsonKey(ignore: true)
  @override
  _$$CommandDialogCopyWith<_$CommandDialog> get copyWith =>
      __$$CommandDialogCopyWithImpl<_$CommandDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return dialog(this.text, options, interaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return dialog?.call(this.text, options, interaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(this.text, options, interaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return dialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return dialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(this);
    }
    return orElse();
  }
}

abstract class CommandDialog implements Command {
  const factory CommandDialog(
      {required final String text,
      required final List<DialogOption> options,
      required final bool interaction}) = _$CommandDialog;

  String get text => throw _privateConstructorUsedError;
  List<DialogOption> get options => throw _privateConstructorUsedError;
  bool get interaction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CommandDialogCopyWith<_$CommandDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommandTranscriptCopyWith<$Res> {
  factory _$$CommandTranscriptCopyWith(
          _$CommandTranscript value, $Res Function(_$CommandTranscript) then) =
      __$$CommandTranscriptCopyWithImpl<$Res>;
  $Res call({String text, bool translation});
}

/// @nodoc
class __$$CommandTranscriptCopyWithImpl<$Res>
    extends _$CommandCopyWithImpl<$Res>
    implements _$$CommandTranscriptCopyWith<$Res> {
  __$$CommandTranscriptCopyWithImpl(
      _$CommandTranscript _value, $Res Function(_$CommandTranscript) _then)
      : super(_value, (v) => _then(v as _$CommandTranscript));

  @override
  _$CommandTranscript get _value => super._value as _$CommandTranscript;

  @override
  $Res call({
    Object? text = freezed,
    Object? translation = freezed,
  }) {
    return _then(_$CommandTranscript(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommandTranscript implements CommandTranscript {
  const _$CommandTranscript({required this.text, required this.translation});

  @override
  final String text;
  @override
  final bool translation;

  @override
  String toString() {
    return 'Command.transcript(text: $text, translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandTranscript &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.translation, translation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(translation));

  @JsonKey(ignore: true)
  @override
  _$$CommandTranscriptCopyWith<_$CommandTranscript> get copyWith =>
      __$$CommandTranscriptCopyWithImpl<_$CommandTranscript>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return transcript(this.text, translation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return transcript?.call(this.text, translation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (transcript != null) {
      return transcript(this.text, translation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return transcript(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return transcript?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (transcript != null) {
      return transcript(this);
    }
    return orElse();
  }
}

abstract class CommandTranscript implements Command {
  const factory CommandTranscript(
      {required final String text,
      required final bool translation}) = _$CommandTranscript;

  String get text => throw _privateConstructorUsedError;
  bool get translation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CommandTranscriptCopyWith<_$CommandTranscript> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommandAudioCopyWith<$Res> {
  factory _$$CommandAudioCopyWith(
          _$CommandAudio value, $Res Function(_$CommandAudio) then) =
      __$$CommandAudioCopyWithImpl<$Res>;
  $Res call({String audio, int duration});
}

/// @nodoc
class __$$CommandAudioCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$CommandAudioCopyWith<$Res> {
  __$$CommandAudioCopyWithImpl(
      _$CommandAudio _value, $Res Function(_$CommandAudio) _then)
      : super(_value, (v) => _then(v as _$CommandAudio));

  @override
  _$CommandAudio get _value => super._value as _$CommandAudio;

  @override
  $Res call({
    Object? audio = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$CommandAudio(
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommandAudio implements CommandAudio {
  const _$CommandAudio({required this.audio, required this.duration});

  @override
  final String audio;
  @override
  final int duration;

  @override
  String toString() {
    return 'Command.audio(audio: $audio, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandAudio &&
            const DeepCollectionEquality().equals(other.audio, audio) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(audio),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$CommandAudioCopyWith<_$CommandAudio> get copyWith =>
      __$$CommandAudioCopyWithImpl<_$CommandAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return audio(this.audio, this.duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return audio?.call(this.audio, this.duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this.audio, this.duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return audio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }
}

abstract class CommandAudio implements Command {
  const factory CommandAudio(
      {required final String audio,
      required final int duration}) = _$CommandAudio;

  String get audio => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CommandAudioCopyWith<_$CommandAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommandPauseCopyWith<$Res> {
  factory _$$CommandPauseCopyWith(
          _$CommandPause value, $Res Function(_$CommandPause) then) =
      __$$CommandPauseCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class __$$CommandPauseCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$CommandPauseCopyWith<$Res> {
  __$$CommandPauseCopyWithImpl(
      _$CommandPause _value, $Res Function(_$CommandPause) _then)
      : super(_value, (v) => _then(v as _$CommandPause));

  @override
  _$CommandPause get _value => super._value as _$CommandPause;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$CommandPause(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommandPause implements CommandPause {
  const _$CommandPause({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'Command.pause(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandPause &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$CommandPauseCopyWith<_$CommandPause> get copyWith =>
      __$$CommandPauseCopyWithImpl<_$CommandPause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return pause(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return pause?.call(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this.duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class CommandPause implements Command {
  const factory CommandPause({required final int duration}) = _$CommandPause;

  int get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CommandPauseCopyWith<_$CommandPause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommandDurationCopyWith<$Res> {
  factory _$$CommandDurationCopyWith(
          _$CommandDuration value, $Res Function(_$CommandDuration) then) =
      __$$CommandDurationCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class __$$CommandDurationCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$CommandDurationCopyWith<$Res> {
  __$$CommandDurationCopyWithImpl(
      _$CommandDuration _value, $Res Function(_$CommandDuration) _then)
      : super(_value, (v) => _then(v as _$CommandDuration));

  @override
  _$CommandDuration get _value => super._value as _$CommandDuration;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$CommandDuration(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommandDuration implements CommandDuration {
  const _$CommandDuration({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'Command.duration(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandDuration &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$CommandDurationCopyWith<_$CommandDuration> get copyWith =>
      __$$CommandDurationCopyWithImpl<_$CommandDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return duration(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return duration?.call(this.duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this.duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return duration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return duration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (duration != null) {
      return duration(this);
    }
    return orElse();
  }
}

abstract class CommandDuration implements Command {
  const factory CommandDuration({required final int duration}) =
      _$CommandDuration;

  int get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CommandDurationCopyWith<_$CommandDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommandPuzzleCopyWith<$Res> {
  factory _$$CommandPuzzleCopyWith(
          _$CommandPuzzle value, $Res Function(_$CommandPuzzle) then) =
      __$$CommandPuzzleCopyWithImpl<$Res>;
  $Res call({List<Chunk> chunks, String? audio});
}

/// @nodoc
class __$$CommandPuzzleCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$CommandPuzzleCopyWith<$Res> {
  __$$CommandPuzzleCopyWithImpl(
      _$CommandPuzzle _value, $Res Function(_$CommandPuzzle) _then)
      : super(_value, (v) => _then(v as _$CommandPuzzle));

  @override
  _$CommandPuzzle get _value => super._value as _$CommandPuzzle;

  @override
  $Res call({
    Object? chunks = freezed,
    Object? audio = freezed,
  }) {
    return _then(_$CommandPuzzle(
      chunks: chunks == freezed
          ? _value._chunks
          : chunks // ignore: cast_nullable_to_non_nullable
              as List<Chunk>,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommandPuzzle implements CommandPuzzle {
  const _$CommandPuzzle({required final List<Chunk> chunks, this.audio})
      : _chunks = chunks;

  final List<Chunk> _chunks;
  @override
  List<Chunk> get chunks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chunks);
  }

  @override
  final String? audio;

  @override
  String toString() {
    return 'Command.puzzle(chunks: $chunks, audio: $audio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandPuzzle &&
            const DeepCollectionEquality().equals(other._chunks, _chunks) &&
            const DeepCollectionEquality().equals(other.audio, audio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chunks),
      const DeepCollectionEquality().hash(audio));

  @JsonKey(ignore: true)
  @override
  _$$CommandPuzzleCopyWith<_$CommandPuzzle> get copyWith =>
      __$$CommandPuzzleCopyWithImpl<_$CommandPuzzle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return puzzle(chunks, this.audio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return puzzle?.call(chunks, this.audio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (puzzle != null) {
      return puzzle(chunks, this.audio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return puzzle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return puzzle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (puzzle != null) {
      return puzzle(this);
    }
    return orElse();
  }
}

abstract class CommandPuzzle implements Command {
  const factory CommandPuzzle(
      {required final List<Chunk> chunks,
      final String? audio}) = _$CommandPuzzle;

  List<Chunk> get chunks => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CommandPuzzleCopyWith<_$CommandPuzzle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommandTextCopyWith<$Res> {
  factory _$$CommandTextCopyWith(
          _$CommandText value, $Res Function(_$CommandText) then) =
      __$$CommandTextCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$CommandTextCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$CommandTextCopyWith<$Res> {
  __$$CommandTextCopyWithImpl(
      _$CommandText _value, $Res Function(_$CommandText) _then)
      : super(_value, (v) => _then(v as _$CommandText));

  @override
  _$CommandText get _value => super._value as _$CommandText;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$CommandText(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommandText implements CommandText {
  const _$CommandText({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'Command.text(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandText &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$CommandTextCopyWith<_$CommandText> get copyWith =>
      __$$CommandTextCopyWithImpl<_$CommandText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return text(this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return text?.call(this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class CommandText implements Command {
  const factory CommandText({required final String text}) = _$CommandText;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CommandTextCopyWith<_$CommandText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CommandClearCopyWith<$Res> {
  factory _$$_CommandClearCopyWith(
          _$_CommandClear value, $Res Function(_$_CommandClear) then) =
      __$$_CommandClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CommandClearCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$$_CommandClearCopyWith<$Res> {
  __$$_CommandClearCopyWithImpl(
      _$_CommandClear _value, $Res Function(_$_CommandClear) _then)
      : super(_value, (v) => _then(v as _$_CommandClear));

  @override
  _$_CommandClear get _value => super._value as _$_CommandClear;
}

/// @nodoc

class _$_CommandClear implements _CommandClear {
  const _$_CommandClear();

  @override
  String toString() {
    return 'Command.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CommandClear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
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
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _CommandClear implements Command {
  const factory _CommandClear() = _$_CommandClear;
}

/// @nodoc
abstract class _$$_CommandReviewCompletedCopyWith<$Res> {
  factory _$$_CommandReviewCompletedCopyWith(_$_CommandReviewCompleted value,
          $Res Function(_$_CommandReviewCompleted) then) =
      __$$_CommandReviewCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CommandReviewCompletedCopyWithImpl<$Res>
    extends _$CommandCopyWithImpl<$Res>
    implements _$$_CommandReviewCompletedCopyWith<$Res> {
  __$$_CommandReviewCompletedCopyWithImpl(_$_CommandReviewCompleted _value,
      $Res Function(_$_CommandReviewCompleted) _then)
      : super(_value, (v) => _then(v as _$_CommandReviewCompleted));

  @override
  _$_CommandReviewCompleted get _value =>
      super._value as _$_CommandReviewCompleted;
}

/// @nodoc

class _$_CommandReviewCompleted implements _CommandReviewCompleted {
  const _$_CommandReviewCompleted();

  @override
  String toString() {
    return 'Command.reviewCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandReviewCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return reviewCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return reviewCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (reviewCompleted != null) {
      return reviewCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return reviewCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return reviewCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (reviewCompleted != null) {
      return reviewCompleted(this);
    }
    return orElse();
  }
}

abstract class _CommandReviewCompleted implements Command {
  const factory _CommandReviewCompleted() = _$_CommandReviewCompleted;
}

/// @nodoc
abstract class _$$_CommandLessonCompletedCopyWith<$Res> {
  factory _$$_CommandLessonCompletedCopyWith(_$_CommandLessonCompleted value,
          $Res Function(_$_CommandLessonCompleted) then) =
      __$$_CommandLessonCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CommandLessonCompletedCopyWithImpl<$Res>
    extends _$CommandCopyWithImpl<$Res>
    implements _$$_CommandLessonCompletedCopyWith<$Res> {
  __$$_CommandLessonCompletedCopyWithImpl(_$_CommandLessonCompleted _value,
      $Res Function(_$_CommandLessonCompleted) _then)
      : super(_value, (v) => _then(v as _$_CommandLessonCompleted));

  @override
  _$_CommandLessonCompleted get _value =>
      super._value as _$_CommandLessonCompleted;
}

/// @nodoc

class _$_CommandLessonCompleted implements _CommandLessonCompleted {
  const _$_CommandLessonCompleted();

  @override
  String toString() {
    return 'Command.lessonCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandLessonCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, List<DialogOption> options, bool interaction)
        dialog,
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String audio, int duration) audio,
    required TResult Function(int duration) pause,
    required TResult Function(int duration) duration,
    required TResult Function(List<Chunk> chunks, String? audio) puzzle,
    required TResult Function(String text) text,
    required TResult Function() clear,
    required TResult Function() reviewCompleted,
    required TResult Function() lessonCompleted,
  }) {
    return lessonCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
  }) {
    return lessonCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, List<DialogOption> options, bool interaction)?
        dialog,
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String audio, int duration)? audio,
    TResult Function(int duration)? pause,
    TResult Function(int duration)? duration,
    TResult Function(List<Chunk> chunks, String? audio)? puzzle,
    TResult Function(String text)? text,
    TResult Function()? clear,
    TResult Function()? reviewCompleted,
    TResult Function()? lessonCompleted,
    required TResult orElse(),
  }) {
    if (lessonCompleted != null) {
      return lessonCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommandDialog value) dialog,
    required TResult Function(CommandTranscript value) transcript,
    required TResult Function(CommandAudio value) audio,
    required TResult Function(CommandPause value) pause,
    required TResult Function(CommandDuration value) duration,
    required TResult Function(CommandPuzzle value) puzzle,
    required TResult Function(CommandText value) text,
    required TResult Function(_CommandClear value) clear,
    required TResult Function(_CommandReviewCompleted value) reviewCompleted,
    required TResult Function(_CommandLessonCompleted value) lessonCompleted,
  }) {
    return lessonCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
  }) {
    return lessonCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommandDialog value)? dialog,
    TResult Function(CommandTranscript value)? transcript,
    TResult Function(CommandAudio value)? audio,
    TResult Function(CommandPause value)? pause,
    TResult Function(CommandDuration value)? duration,
    TResult Function(CommandPuzzle value)? puzzle,
    TResult Function(CommandText value)? text,
    TResult Function(_CommandClear value)? clear,
    TResult Function(_CommandReviewCompleted value)? reviewCompleted,
    TResult Function(_CommandLessonCompleted value)? lessonCompleted,
    required TResult orElse(),
  }) {
    if (lessonCompleted != null) {
      return lessonCompleted(this);
    }
    return orElse();
  }
}

abstract class _CommandLessonCompleted implements Command {
  const factory _CommandLessonCompleted() = _$_CommandLessonCompleted;
}

/// @nodoc
mixin _$ScreenData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String text, List<DialogOption> options) dialog,
    required TResult Function(
            PuzzleBloc bloc, List<Chunk> chunks, String? audio)
        puzzle,
    required TResult Function(String text, List<DialogOption> options) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranscriptData value) transcript,
    required TResult Function(DialogData value) dialog,
    required TResult Function(PuzzleData value) puzzle,
    required TResult Function(TextData value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenDataCopyWith<$Res> {
  factory $ScreenDataCopyWith(
          ScreenData value, $Res Function(ScreenData) then) =
      _$ScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScreenDataCopyWithImpl<$Res> implements $ScreenDataCopyWith<$Res> {
  _$ScreenDataCopyWithImpl(this._value, this._then);

  final ScreenData _value;
  // ignore: unused_field
  final $Res Function(ScreenData) _then;
}

/// @nodoc
abstract class _$$TranscriptDataCopyWith<$Res> {
  factory _$$TranscriptDataCopyWith(
          _$TranscriptData value, $Res Function(_$TranscriptData) then) =
      __$$TranscriptDataCopyWithImpl<$Res>;
  $Res call({String text, bool translation});
}

/// @nodoc
class __$$TranscriptDataCopyWithImpl<$Res>
    extends _$ScreenDataCopyWithImpl<$Res>
    implements _$$TranscriptDataCopyWith<$Res> {
  __$$TranscriptDataCopyWithImpl(
      _$TranscriptData _value, $Res Function(_$TranscriptData) _then)
      : super(_value, (v) => _then(v as _$TranscriptData));

  @override
  _$TranscriptData get _value => super._value as _$TranscriptData;

  @override
  $Res call({
    Object? text = freezed,
    Object? translation = freezed,
  }) {
    return _then(_$TranscriptData(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translation: translation == freezed
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TranscriptData implements TranscriptData {
  const _$TranscriptData({required this.text, required this.translation});

  @override
  final String text;
  @override
  final bool translation;

  @override
  String toString() {
    return 'ScreenData.transcript(text: $text, translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranscriptData &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.translation, translation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(translation));

  @JsonKey(ignore: true)
  @override
  _$$TranscriptDataCopyWith<_$TranscriptData> get copyWith =>
      __$$TranscriptDataCopyWithImpl<_$TranscriptData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String text, List<DialogOption> options) dialog,
    required TResult Function(
            PuzzleBloc bloc, List<Chunk> chunks, String? audio)
        puzzle,
    required TResult Function(String text, List<DialogOption> options) text,
  }) {
    return transcript(this.text, translation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
  }) {
    return transcript?.call(this.text, translation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
    required TResult orElse(),
  }) {
    if (transcript != null) {
      return transcript(this.text, translation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranscriptData value) transcript,
    required TResult Function(DialogData value) dialog,
    required TResult Function(PuzzleData value) puzzle,
    required TResult Function(TextData value) text,
  }) {
    return transcript(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
  }) {
    return transcript?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
    required TResult orElse(),
  }) {
    if (transcript != null) {
      return transcript(this);
    }
    return orElse();
  }
}

abstract class TranscriptData implements ScreenData {
  const factory TranscriptData(
      {required final String text,
      required final bool translation}) = _$TranscriptData;

  String get text => throw _privateConstructorUsedError;
  bool get translation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TranscriptDataCopyWith<_$TranscriptData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogDataCopyWith<$Res> {
  factory _$$DialogDataCopyWith(
          _$DialogData value, $Res Function(_$DialogData) then) =
      __$$DialogDataCopyWithImpl<$Res>;
  $Res call({String text, List<DialogOption> options});
}

/// @nodoc
class __$$DialogDataCopyWithImpl<$Res> extends _$ScreenDataCopyWithImpl<$Res>
    implements _$$DialogDataCopyWith<$Res> {
  __$$DialogDataCopyWithImpl(
      _$DialogData _value, $Res Function(_$DialogData) _then)
      : super(_value, (v) => _then(v as _$DialogData));

  @override
  _$DialogData get _value => super._value as _$DialogData;

  @override
  $Res call({
    Object? text = freezed,
    Object? options = freezed,
  }) {
    return _then(_$DialogData(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<DialogOption>,
    ));
  }
}

/// @nodoc

class _$DialogData implements DialogData {
  const _$DialogData(
      {required this.text, required final List<DialogOption> options})
      : _options = options;

  @override
  final String text;
  final List<DialogOption> _options;
  @override
  List<DialogOption> get options {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ScreenData.dialog(text: $text, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogData &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  _$$DialogDataCopyWith<_$DialogData> get copyWith =>
      __$$DialogDataCopyWithImpl<_$DialogData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String text, List<DialogOption> options) dialog,
    required TResult Function(
            PuzzleBloc bloc, List<Chunk> chunks, String? audio)
        puzzle,
    required TResult Function(String text, List<DialogOption> options) text,
  }) {
    return dialog(this.text, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
  }) {
    return dialog?.call(this.text, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(this.text, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranscriptData value) transcript,
    required TResult Function(DialogData value) dialog,
    required TResult Function(PuzzleData value) puzzle,
    required TResult Function(TextData value) text,
  }) {
    return dialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
  }) {
    return dialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
    required TResult orElse(),
  }) {
    if (dialog != null) {
      return dialog(this);
    }
    return orElse();
  }
}

abstract class DialogData implements ScreenData {
  const factory DialogData(
      {required final String text,
      required final List<DialogOption> options}) = _$DialogData;

  String get text => throw _privateConstructorUsedError;
  List<DialogOption> get options => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DialogDataCopyWith<_$DialogData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PuzzleDataCopyWith<$Res> {
  factory _$$PuzzleDataCopyWith(
          _$PuzzleData value, $Res Function(_$PuzzleData) then) =
      __$$PuzzleDataCopyWithImpl<$Res>;
  $Res call({PuzzleBloc bloc, List<Chunk> chunks, String? audio});
}

/// @nodoc
class __$$PuzzleDataCopyWithImpl<$Res> extends _$ScreenDataCopyWithImpl<$Res>
    implements _$$PuzzleDataCopyWith<$Res> {
  __$$PuzzleDataCopyWithImpl(
      _$PuzzleData _value, $Res Function(_$PuzzleData) _then)
      : super(_value, (v) => _then(v as _$PuzzleData));

  @override
  _$PuzzleData get _value => super._value as _$PuzzleData;

  @override
  $Res call({
    Object? bloc = freezed,
    Object? chunks = freezed,
    Object? audio = freezed,
  }) {
    return _then(_$PuzzleData(
      bloc: bloc == freezed
          ? _value.bloc
          : bloc // ignore: cast_nullable_to_non_nullable
              as PuzzleBloc,
      chunks: chunks == freezed
          ? _value._chunks
          : chunks // ignore: cast_nullable_to_non_nullable
              as List<Chunk>,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PuzzleData implements PuzzleData {
  const _$PuzzleData(
      {required this.bloc, required final List<Chunk> chunks, this.audio})
      : _chunks = chunks;

  @override
  final PuzzleBloc bloc;
  final List<Chunk> _chunks;
  @override
  List<Chunk> get chunks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chunks);
  }

  @override
  final String? audio;

  @override
  String toString() {
    return 'ScreenData.puzzle(bloc: $bloc, chunks: $chunks, audio: $audio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PuzzleData &&
            const DeepCollectionEquality().equals(other.bloc, bloc) &&
            const DeepCollectionEquality().equals(other._chunks, _chunks) &&
            const DeepCollectionEquality().equals(other.audio, audio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bloc),
      const DeepCollectionEquality().hash(_chunks),
      const DeepCollectionEquality().hash(audio));

  @JsonKey(ignore: true)
  @override
  _$$PuzzleDataCopyWith<_$PuzzleData> get copyWith =>
      __$$PuzzleDataCopyWithImpl<_$PuzzleData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String text, List<DialogOption> options) dialog,
    required TResult Function(
            PuzzleBloc bloc, List<Chunk> chunks, String? audio)
        puzzle,
    required TResult Function(String text, List<DialogOption> options) text,
  }) {
    return puzzle(bloc, chunks, audio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
  }) {
    return puzzle?.call(bloc, chunks, audio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
    required TResult orElse(),
  }) {
    if (puzzle != null) {
      return puzzle(bloc, chunks, audio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranscriptData value) transcript,
    required TResult Function(DialogData value) dialog,
    required TResult Function(PuzzleData value) puzzle,
    required TResult Function(TextData value) text,
  }) {
    return puzzle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
  }) {
    return puzzle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
    required TResult orElse(),
  }) {
    if (puzzle != null) {
      return puzzle(this);
    }
    return orElse();
  }
}

abstract class PuzzleData implements ScreenData {
  const factory PuzzleData(
      {required final PuzzleBloc bloc,
      required final List<Chunk> chunks,
      final String? audio}) = _$PuzzleData;

  PuzzleBloc get bloc => throw _privateConstructorUsedError;
  List<Chunk> get chunks => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PuzzleDataCopyWith<_$PuzzleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextDataCopyWith<$Res> {
  factory _$$TextDataCopyWith(
          _$TextData value, $Res Function(_$TextData) then) =
      __$$TextDataCopyWithImpl<$Res>;
  $Res call({String text, List<DialogOption> options});
}

/// @nodoc
class __$$TextDataCopyWithImpl<$Res> extends _$ScreenDataCopyWithImpl<$Res>
    implements _$$TextDataCopyWith<$Res> {
  __$$TextDataCopyWithImpl(_$TextData _value, $Res Function(_$TextData) _then)
      : super(_value, (v) => _then(v as _$TextData));

  @override
  _$TextData get _value => super._value as _$TextData;

  @override
  $Res call({
    Object? text = freezed,
    Object? options = freezed,
  }) {
    return _then(_$TextData(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<DialogOption>,
    ));
  }
}

/// @nodoc

class _$TextData implements TextData {
  const _$TextData(
      {required this.text, required final List<DialogOption> options})
      : _options = options;

  @override
  final String text;
  final List<DialogOption> _options;
  @override
  List<DialogOption> get options {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ScreenData.text(text: $text, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextData &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  _$$TextDataCopyWith<_$TextData> get copyWith =>
      __$$TextDataCopyWithImpl<_$TextData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, bool translation) transcript,
    required TResult Function(String text, List<DialogOption> options) dialog,
    required TResult Function(
            PuzzleBloc bloc, List<Chunk> chunks, String? audio)
        puzzle,
    required TResult Function(String text, List<DialogOption> options) text,
  }) {
    return text(this.text, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
  }) {
    return text?.call(this.text, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, bool translation)? transcript,
    TResult Function(String text, List<DialogOption> options)? dialog,
    TResult Function(PuzzleBloc bloc, List<Chunk> chunks, String? audio)?
        puzzle,
    TResult Function(String text, List<DialogOption> options)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TranscriptData value) transcript,
    required TResult Function(DialogData value) dialog,
    required TResult Function(PuzzleData value) puzzle,
    required TResult Function(TextData value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TranscriptData value)? transcript,
    TResult Function(DialogData value)? dialog,
    TResult Function(PuzzleData value)? puzzle,
    TResult Function(TextData value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextData implements ScreenData {
  const factory TextData(
      {required final String text,
      required final List<DialogOption> options}) = _$TextData;

  String get text => throw _privateConstructorUsedError;
  List<DialogOption> get options => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TextDataCopyWith<_$TextData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DialogOption {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() start,
    required TResult Function() close,
    required TResult Function() forward,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogOptionNext value) next,
    required TResult Function(DialogOptionStart value) start,
    required TResult Function(DialogOptionClose value) close,
    required TResult Function(DialogOptionForward value) forward,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogOptionCopyWith<$Res> {
  factory $DialogOptionCopyWith(
          DialogOption value, $Res Function(DialogOption) then) =
      _$DialogOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$DialogOptionCopyWithImpl<$Res> implements $DialogOptionCopyWith<$Res> {
  _$DialogOptionCopyWithImpl(this._value, this._then);

  final DialogOption _value;
  // ignore: unused_field
  final $Res Function(DialogOption) _then;
}

/// @nodoc
abstract class _$$DialogOptionNextCopyWith<$Res> {
  factory _$$DialogOptionNextCopyWith(
          _$DialogOptionNext value, $Res Function(_$DialogOptionNext) then) =
      __$$DialogOptionNextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DialogOptionNextCopyWithImpl<$Res>
    extends _$DialogOptionCopyWithImpl<$Res>
    implements _$$DialogOptionNextCopyWith<$Res> {
  __$$DialogOptionNextCopyWithImpl(
      _$DialogOptionNext _value, $Res Function(_$DialogOptionNext) _then)
      : super(_value, (v) => _then(v as _$DialogOptionNext));

  @override
  _$DialogOptionNext get _value => super._value as _$DialogOptionNext;
}

/// @nodoc

class _$DialogOptionNext implements DialogOptionNext {
  const _$DialogOptionNext();

  @override
  String toString() {
    return 'DialogOption.next()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DialogOptionNext);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() start,
    required TResult Function() close,
    required TResult Function() forward,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogOptionNext value) next,
    required TResult Function(DialogOptionStart value) start,
    required TResult Function(DialogOptionClose value) close,
    required TResult Function(DialogOptionForward value) forward,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class DialogOptionNext implements DialogOption {
  const factory DialogOptionNext() = _$DialogOptionNext;
}

/// @nodoc
abstract class _$$DialogOptionStartCopyWith<$Res> {
  factory _$$DialogOptionStartCopyWith(
          _$DialogOptionStart value, $Res Function(_$DialogOptionStart) then) =
      __$$DialogOptionStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DialogOptionStartCopyWithImpl<$Res>
    extends _$DialogOptionCopyWithImpl<$Res>
    implements _$$DialogOptionStartCopyWith<$Res> {
  __$$DialogOptionStartCopyWithImpl(
      _$DialogOptionStart _value, $Res Function(_$DialogOptionStart) _then)
      : super(_value, (v) => _then(v as _$DialogOptionStart));

  @override
  _$DialogOptionStart get _value => super._value as _$DialogOptionStart;
}

/// @nodoc

class _$DialogOptionStart implements DialogOptionStart {
  const _$DialogOptionStart();

  @override
  String toString() {
    return 'DialogOption.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DialogOptionStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() start,
    required TResult Function() close,
    required TResult Function() forward,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogOptionNext value) next,
    required TResult Function(DialogOptionStart value) start,
    required TResult Function(DialogOptionClose value) close,
    required TResult Function(DialogOptionForward value) forward,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class DialogOptionStart implements DialogOption {
  const factory DialogOptionStart() = _$DialogOptionStart;
}

/// @nodoc
abstract class _$$DialogOptionCloseCopyWith<$Res> {
  factory _$$DialogOptionCloseCopyWith(
          _$DialogOptionClose value, $Res Function(_$DialogOptionClose) then) =
      __$$DialogOptionCloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DialogOptionCloseCopyWithImpl<$Res>
    extends _$DialogOptionCopyWithImpl<$Res>
    implements _$$DialogOptionCloseCopyWith<$Res> {
  __$$DialogOptionCloseCopyWithImpl(
      _$DialogOptionClose _value, $Res Function(_$DialogOptionClose) _then)
      : super(_value, (v) => _then(v as _$DialogOptionClose));

  @override
  _$DialogOptionClose get _value => super._value as _$DialogOptionClose;
}

/// @nodoc

class _$DialogOptionClose implements DialogOptionClose {
  const _$DialogOptionClose();

  @override
  String toString() {
    return 'DialogOption.close()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DialogOptionClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() start,
    required TResult Function() close,
    required TResult Function() forward,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogOptionNext value) next,
    required TResult Function(DialogOptionStart value) start,
    required TResult Function(DialogOptionClose value) close,
    required TResult Function(DialogOptionForward value) forward,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class DialogOptionClose implements DialogOption {
  const factory DialogOptionClose() = _$DialogOptionClose;
}

/// @nodoc
abstract class _$$DialogOptionForwardCopyWith<$Res> {
  factory _$$DialogOptionForwardCopyWith(_$DialogOptionForward value,
          $Res Function(_$DialogOptionForward) then) =
      __$$DialogOptionForwardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DialogOptionForwardCopyWithImpl<$Res>
    extends _$DialogOptionCopyWithImpl<$Res>
    implements _$$DialogOptionForwardCopyWith<$Res> {
  __$$DialogOptionForwardCopyWithImpl(
      _$DialogOptionForward _value, $Res Function(_$DialogOptionForward) _then)
      : super(_value, (v) => _then(v as _$DialogOptionForward));

  @override
  _$DialogOptionForward get _value => super._value as _$DialogOptionForward;
}

/// @nodoc

class _$DialogOptionForward implements DialogOptionForward {
  const _$DialogOptionForward();

  @override
  String toString() {
    return 'DialogOption.forward()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DialogOptionForward);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() start,
    required TResult Function() close,
    required TResult Function() forward,
  }) {
    return forward();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
  }) {
    return forward?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? start,
    TResult Function()? close,
    TResult Function()? forward,
    required TResult orElse(),
  }) {
    if (forward != null) {
      return forward();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogOptionNext value) next,
    required TResult Function(DialogOptionStart value) start,
    required TResult Function(DialogOptionClose value) close,
    required TResult Function(DialogOptionForward value) forward,
  }) {
    return forward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
  }) {
    return forward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogOptionNext value)? next,
    TResult Function(DialogOptionStart value)? start,
    TResult Function(DialogOptionClose value)? close,
    TResult Function(DialogOptionForward value)? forward,
    required TResult orElse(),
  }) {
    if (forward != null) {
      return forward(this);
    }
    return orElse();
  }
}

abstract class DialogOptionForward implements DialogOption {
  const factory DialogOptionForward() = _$DialogOptionForward;
}
