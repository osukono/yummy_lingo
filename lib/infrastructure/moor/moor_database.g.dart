// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Language extends DataClass implements Insertable<Language> {
  final String id;
  final String code;
  final String name;
  final String icon;
  final bool course;
  final double pause_after_exercise;
  final double listening_rate;
  final double practice_rate;
  Language(
      {required this.id,
      required this.code,
      required this.name,
      required this.icon,
      required this.course,
      required this.pause_after_exercise,
      required this.listening_rate,
      required this.practice_rate});
  factory Language.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Language(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      icon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon'])!,
      course: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}course'])!,
      pause_after_exercise: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}pause_after_exercise'])!,
      listening_rate: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pause_between'])!,
      practice_rate: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pause_practise_1'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    map['icon'] = Variable<String>(icon);
    map['course'] = Variable<bool>(course);
    map['pause_after_exercise'] = Variable<double>(pause_after_exercise);
    map['pause_between'] = Variable<double>(listening_rate);
    map['pause_practise_1'] = Variable<double>(practice_rate);
    return map;
  }

  LanguagesCompanion toCompanion(bool nullToAbsent) {
    return LanguagesCompanion(
      id: Value(id),
      code: Value(code),
      name: Value(name),
      icon: Value(icon),
      course: Value(course),
      pause_after_exercise: Value(pause_after_exercise),
      listening_rate: Value(listening_rate),
      practice_rate: Value(practice_rate),
    );
  }

  factory Language.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Language(
      id: serializer.fromJson<String>(json['id']),
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
      icon: serializer.fromJson<String>(json['icon']),
      course: serializer.fromJson<bool>(json['course']),
      pause_after_exercise:
          serializer.fromJson<double>(json['pause_after_exercise']),
      listening_rate: serializer.fromJson<double>(json['listening_rate']),
      practice_rate: serializer.fromJson<double>(json['practice_rate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
      'icon': serializer.toJson<String>(icon),
      'course': serializer.toJson<bool>(course),
      'pause_after_exercise': serializer.toJson<double>(pause_after_exercise),
      'listening_rate': serializer.toJson<double>(listening_rate),
      'practice_rate': serializer.toJson<double>(practice_rate),
    };
  }

  Language copyWith(
          {String? id,
          String? code,
          String? name,
          String? icon,
          bool? course,
          double? pause_after_exercise,
          double? listening_rate,
          double? practice_rate}) =>
      Language(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        icon: icon ?? this.icon,
        course: course ?? this.course,
        pause_after_exercise: pause_after_exercise ?? this.pause_after_exercise,
        listening_rate: listening_rate ?? this.listening_rate,
        practice_rate: practice_rate ?? this.practice_rate,
      );
  @override
  String toString() {
    return (StringBuffer('Language(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('icon: $icon, ')
          ..write('course: $course, ')
          ..write('pause_after_exercise: $pause_after_exercise, ')
          ..write('listening_rate: $listening_rate, ')
          ..write('practice_rate: $practice_rate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, code, name, icon, course,
      pause_after_exercise, listening_rate, practice_rate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Language &&
          other.id == this.id &&
          other.code == this.code &&
          other.name == this.name &&
          other.icon == this.icon &&
          other.course == this.course &&
          other.pause_after_exercise == this.pause_after_exercise &&
          other.listening_rate == this.listening_rate &&
          other.practice_rate == this.practice_rate);
}

class LanguagesCompanion extends UpdateCompanion<Language> {
  final Value<String> id;
  final Value<String> code;
  final Value<String> name;
  final Value<String> icon;
  final Value<bool> course;
  final Value<double> pause_after_exercise;
  final Value<double> listening_rate;
  final Value<double> practice_rate;
  const LanguagesCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.icon = const Value.absent(),
    this.course = const Value.absent(),
    this.pause_after_exercise = const Value.absent(),
    this.listening_rate = const Value.absent(),
    this.practice_rate = const Value.absent(),
  });
  LanguagesCompanion.insert({
    required String id,
    required String code,
    required String name,
    required String icon,
    this.course = const Value.absent(),
    this.pause_after_exercise = const Value.absent(),
    this.listening_rate = const Value.absent(),
    this.practice_rate = const Value.absent(),
  })  : id = Value(id),
        code = Value(code),
        name = Value(name),
        icon = Value(icon);
  static Insertable<Language> custom({
    Expression<String>? id,
    Expression<String>? code,
    Expression<String>? name,
    Expression<String>? icon,
    Expression<bool>? course,
    Expression<double>? pause_after_exercise,
    Expression<double>? listening_rate,
    Expression<double>? practice_rate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (icon != null) 'icon': icon,
      if (course != null) 'course': course,
      if (pause_after_exercise != null)
        'pause_after_exercise': pause_after_exercise,
      if (listening_rate != null) 'pause_between': listening_rate,
      if (practice_rate != null) 'pause_practise_1': practice_rate,
    });
  }

  LanguagesCompanion copyWith(
      {Value<String>? id,
      Value<String>? code,
      Value<String>? name,
      Value<String>? icon,
      Value<bool>? course,
      Value<double>? pause_after_exercise,
      Value<double>? listening_rate,
      Value<double>? practice_rate}) {
    return LanguagesCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      course: course ?? this.course,
      pause_after_exercise: pause_after_exercise ?? this.pause_after_exercise,
      listening_rate: listening_rate ?? this.listening_rate,
      practice_rate: practice_rate ?? this.practice_rate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (course.present) {
      map['course'] = Variable<bool>(course.value);
    }
    if (pause_after_exercise.present) {
      map['pause_after_exercise'] =
          Variable<double>(pause_after_exercise.value);
    }
    if (listening_rate.present) {
      map['pause_between'] = Variable<double>(listening_rate.value);
    }
    if (practice_rate.present) {
      map['pause_practise_1'] = Variable<double>(practice_rate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LanguagesCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('icon: $icon, ')
          ..write('course: $course, ')
          ..write('pause_after_exercise: $pause_after_exercise, ')
          ..write('listening_rate: $listening_rate, ')
          ..write('practice_rate: $practice_rate')
          ..write(')'))
        .toString();
  }
}

class $LanguagesTable extends Languages
    with TableInfo<$LanguagesTable, Language> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LanguagesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String?> icon = GeneratedColumn<String?>(
      'icon', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _courseMeta = const VerificationMeta('course');
  @override
  late final GeneratedColumn<bool?> course = GeneratedColumn<bool?>(
      'course', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (course IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _pause_after_exerciseMeta =
      const VerificationMeta('pause_after_exercise');
  @override
  late final GeneratedColumn<double?> pause_after_exercise =
      GeneratedColumn<double?>('pause_after_exercise', aliasedName, false,
          type: const RealType(),
          requiredDuringInsert: false,
          defaultValue: const Constant(0.0));
  final VerificationMeta _listening_rateMeta =
      const VerificationMeta('listening_rate');
  @override
  late final GeneratedColumn<double?> listening_rate = GeneratedColumn<double?>(
      'pause_between', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _practice_rateMeta =
      const VerificationMeta('practice_rate');
  @override
  late final GeneratedColumn<double?> practice_rate = GeneratedColumn<double?>(
      'pause_practise_1', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        code,
        name,
        icon,
        course,
        pause_after_exercise,
        listening_rate,
        practice_rate
      ];
  @override
  String get aliasedName => _alias ?? 'languages';
  @override
  String get actualTableName => 'languages';
  @override
  VerificationContext validateIntegrity(Insertable<Language> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    } else if (isInserting) {
      context.missing(_iconMeta);
    }
    if (data.containsKey('course')) {
      context.handle(_courseMeta,
          course.isAcceptableOrUnknown(data['course']!, _courseMeta));
    }
    if (data.containsKey('pause_after_exercise')) {
      context.handle(
          _pause_after_exerciseMeta,
          pause_after_exercise.isAcceptableOrUnknown(
              data['pause_after_exercise']!, _pause_after_exerciseMeta));
    }
    if (data.containsKey('pause_between')) {
      context.handle(
          _listening_rateMeta,
          listening_rate.isAcceptableOrUnknown(
              data['pause_between']!, _listening_rateMeta));
    }
    if (data.containsKey('pause_practise_1')) {
      context.handle(
          _practice_rateMeta,
          practice_rate.isAcceptableOrUnknown(
              data['pause_practise_1']!, _practice_rateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Language map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Language.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LanguagesTable createAlias(String alias) {
    return $LanguagesTable(attachedDatabase, alias);
  }
}

class MyCourse extends DataClass implements Insertable<MyCourse> {
  final String id;
  final String? firebase_id;
  final bool bought;
  final String? purchase_id;
  final int current_lesson;
  final int current_part;
  final bool downloaded;
  final int last_listened;
  final bool validated;
  MyCourse(
      {required this.id,
      this.firebase_id,
      required this.bought,
      this.purchase_id,
      required this.current_lesson,
      required this.current_part,
      required this.downloaded,
      required this.last_listened,
      required this.validated});
  factory MyCourse.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MyCourse(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      firebase_id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}firebase_id']),
      bought: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bought'])!,
      purchase_id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}purchase_id']),
      current_lesson: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current_lesson'])!,
      current_part: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current_part'])!,
      downloaded: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}downloaded'])!,
      last_listened: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_listened'])!,
      validated: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}validated'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || firebase_id != null) {
      map['firebase_id'] = Variable<String?>(firebase_id);
    }
    map['bought'] = Variable<bool>(bought);
    if (!nullToAbsent || purchase_id != null) {
      map['purchase_id'] = Variable<String?>(purchase_id);
    }
    map['current_lesson'] = Variable<int>(current_lesson);
    map['current_part'] = Variable<int>(current_part);
    map['downloaded'] = Variable<bool>(downloaded);
    map['last_listened'] = Variable<int>(last_listened);
    map['validated'] = Variable<bool>(validated);
    return map;
  }

  MyCoursesCompanion toCompanion(bool nullToAbsent) {
    return MyCoursesCompanion(
      id: Value(id),
      firebase_id: firebase_id == null && nullToAbsent
          ? const Value.absent()
          : Value(firebase_id),
      bought: Value(bought),
      purchase_id: purchase_id == null && nullToAbsent
          ? const Value.absent()
          : Value(purchase_id),
      current_lesson: Value(current_lesson),
      current_part: Value(current_part),
      downloaded: Value(downloaded),
      last_listened: Value(last_listened),
      validated: Value(validated),
    );
  }

  factory MyCourse.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MyCourse(
      id: serializer.fromJson<String>(json['id']),
      firebase_id: serializer.fromJson<String?>(json['firebase_id']),
      bought: serializer.fromJson<bool>(json['bought']),
      purchase_id: serializer.fromJson<String?>(json['purchase_id']),
      current_lesson: serializer.fromJson<int>(json['current_lesson']),
      current_part: serializer.fromJson<int>(json['current_part']),
      downloaded: serializer.fromJson<bool>(json['downloaded']),
      last_listened: serializer.fromJson<int>(json['last_listened']),
      validated: serializer.fromJson<bool>(json['validated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firebase_id': serializer.toJson<String?>(firebase_id),
      'bought': serializer.toJson<bool>(bought),
      'purchase_id': serializer.toJson<String?>(purchase_id),
      'current_lesson': serializer.toJson<int>(current_lesson),
      'current_part': serializer.toJson<int>(current_part),
      'downloaded': serializer.toJson<bool>(downloaded),
      'last_listened': serializer.toJson<int>(last_listened),
      'validated': serializer.toJson<bool>(validated),
    };
  }

  MyCourse copyWith(
          {String? id,
          String? firebase_id,
          bool? bought,
          String? purchase_id,
          int? current_lesson,
          int? current_part,
          bool? downloaded,
          int? last_listened,
          bool? validated}) =>
      MyCourse(
        id: id ?? this.id,
        firebase_id: firebase_id ?? this.firebase_id,
        bought: bought ?? this.bought,
        purchase_id: purchase_id ?? this.purchase_id,
        current_lesson: current_lesson ?? this.current_lesson,
        current_part: current_part ?? this.current_part,
        downloaded: downloaded ?? this.downloaded,
        last_listened: last_listened ?? this.last_listened,
        validated: validated ?? this.validated,
      );
  @override
  String toString() {
    return (StringBuffer('MyCourse(')
          ..write('id: $id, ')
          ..write('firebase_id: $firebase_id, ')
          ..write('bought: $bought, ')
          ..write('purchase_id: $purchase_id, ')
          ..write('current_lesson: $current_lesson, ')
          ..write('current_part: $current_part, ')
          ..write('downloaded: $downloaded, ')
          ..write('last_listened: $last_listened, ')
          ..write('validated: $validated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, firebase_id, bought, purchase_id,
      current_lesson, current_part, downloaded, last_listened, validated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyCourse &&
          other.id == this.id &&
          other.firebase_id == this.firebase_id &&
          other.bought == this.bought &&
          other.purchase_id == this.purchase_id &&
          other.current_lesson == this.current_lesson &&
          other.current_part == this.current_part &&
          other.downloaded == this.downloaded &&
          other.last_listened == this.last_listened &&
          other.validated == this.validated);
}

class MyCoursesCompanion extends UpdateCompanion<MyCourse> {
  final Value<String> id;
  final Value<String?> firebase_id;
  final Value<bool> bought;
  final Value<String?> purchase_id;
  final Value<int> current_lesson;
  final Value<int> current_part;
  final Value<bool> downloaded;
  final Value<int> last_listened;
  final Value<bool> validated;
  const MyCoursesCompanion({
    this.id = const Value.absent(),
    this.firebase_id = const Value.absent(),
    this.bought = const Value.absent(),
    this.purchase_id = const Value.absent(),
    this.current_lesson = const Value.absent(),
    this.current_part = const Value.absent(),
    this.downloaded = const Value.absent(),
    this.last_listened = const Value.absent(),
    this.validated = const Value.absent(),
  });
  MyCoursesCompanion.insert({
    required String id,
    this.firebase_id = const Value.absent(),
    this.bought = const Value.absent(),
    this.purchase_id = const Value.absent(),
    this.current_lesson = const Value.absent(),
    this.current_part = const Value.absent(),
    this.downloaded = const Value.absent(),
    this.last_listened = const Value.absent(),
    this.validated = const Value.absent(),
  }) : id = Value(id);
  static Insertable<MyCourse> custom({
    Expression<String>? id,
    Expression<String?>? firebase_id,
    Expression<bool>? bought,
    Expression<String?>? purchase_id,
    Expression<int>? current_lesson,
    Expression<int>? current_part,
    Expression<bool>? downloaded,
    Expression<int>? last_listened,
    Expression<bool>? validated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firebase_id != null) 'firebase_id': firebase_id,
      if (bought != null) 'bought': bought,
      if (purchase_id != null) 'purchase_id': purchase_id,
      if (current_lesson != null) 'current_lesson': current_lesson,
      if (current_part != null) 'current_part': current_part,
      if (downloaded != null) 'downloaded': downloaded,
      if (last_listened != null) 'last_listened': last_listened,
      if (validated != null) 'validated': validated,
    });
  }

  MyCoursesCompanion copyWith(
      {Value<String>? id,
      Value<String?>? firebase_id,
      Value<bool>? bought,
      Value<String?>? purchase_id,
      Value<int>? current_lesson,
      Value<int>? current_part,
      Value<bool>? downloaded,
      Value<int>? last_listened,
      Value<bool>? validated}) {
    return MyCoursesCompanion(
      id: id ?? this.id,
      firebase_id: firebase_id ?? this.firebase_id,
      bought: bought ?? this.bought,
      purchase_id: purchase_id ?? this.purchase_id,
      current_lesson: current_lesson ?? this.current_lesson,
      current_part: current_part ?? this.current_part,
      downloaded: downloaded ?? this.downloaded,
      last_listened: last_listened ?? this.last_listened,
      validated: validated ?? this.validated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firebase_id.present) {
      map['firebase_id'] = Variable<String?>(firebase_id.value);
    }
    if (bought.present) {
      map['bought'] = Variable<bool>(bought.value);
    }
    if (purchase_id.present) {
      map['purchase_id'] = Variable<String?>(purchase_id.value);
    }
    if (current_lesson.present) {
      map['current_lesson'] = Variable<int>(current_lesson.value);
    }
    if (current_part.present) {
      map['current_part'] = Variable<int>(current_part.value);
    }
    if (downloaded.present) {
      map['downloaded'] = Variable<bool>(downloaded.value);
    }
    if (last_listened.present) {
      map['last_listened'] = Variable<int>(last_listened.value);
    }
    if (validated.present) {
      map['validated'] = Variable<bool>(validated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MyCoursesCompanion(')
          ..write('id: $id, ')
          ..write('firebase_id: $firebase_id, ')
          ..write('bought: $bought, ')
          ..write('purchase_id: $purchase_id, ')
          ..write('current_lesson: $current_lesson, ')
          ..write('current_part: $current_part, ')
          ..write('downloaded: $downloaded, ')
          ..write('last_listened: $last_listened, ')
          ..write('validated: $validated')
          ..write(')'))
        .toString();
  }
}

class $MyCoursesTable extends MyCourses
    with TableInfo<$MyCoursesTable, MyCourse> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MyCoursesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _firebase_idMeta =
      const VerificationMeta('firebase_id');
  @override
  late final GeneratedColumn<String?> firebase_id = GeneratedColumn<String?>(
      'firebase_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _boughtMeta = const VerificationMeta('bought');
  @override
  late final GeneratedColumn<bool?> bought = GeneratedColumn<bool?>(
      'bought', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (bought IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _purchase_idMeta =
      const VerificationMeta('purchase_id');
  @override
  late final GeneratedColumn<String?> purchase_id = GeneratedColumn<String?>(
      'purchase_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _current_lessonMeta =
      const VerificationMeta('current_lesson');
  @override
  late final GeneratedColumn<int?> current_lesson = GeneratedColumn<int?>(
      'current_lesson', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _current_partMeta =
      const VerificationMeta('current_part');
  @override
  late final GeneratedColumn<int?> current_part = GeneratedColumn<int?>(
      'current_part', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _downloadedMeta = const VerificationMeta('downloaded');
  @override
  late final GeneratedColumn<bool?> downloaded = GeneratedColumn<bool?>(
      'downloaded', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (downloaded IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _last_listenedMeta =
      const VerificationMeta('last_listened');
  @override
  late final GeneratedColumn<int?> last_listened = GeneratedColumn<int?>(
      'last_listened', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _validatedMeta = const VerificationMeta('validated');
  @override
  late final GeneratedColumn<bool?> validated = GeneratedColumn<bool?>(
      'validated', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (validated IN (0, 1))',
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        firebase_id,
        bought,
        purchase_id,
        current_lesson,
        current_part,
        downloaded,
        last_listened,
        validated
      ];
  @override
  String get aliasedName => _alias ?? 'my_courses';
  @override
  String get actualTableName => 'my_courses';
  @override
  VerificationContext validateIntegrity(Insertable<MyCourse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('firebase_id')) {
      context.handle(
          _firebase_idMeta,
          firebase_id.isAcceptableOrUnknown(
              data['firebase_id']!, _firebase_idMeta));
    }
    if (data.containsKey('bought')) {
      context.handle(_boughtMeta,
          bought.isAcceptableOrUnknown(data['bought']!, _boughtMeta));
    }
    if (data.containsKey('purchase_id')) {
      context.handle(
          _purchase_idMeta,
          purchase_id.isAcceptableOrUnknown(
              data['purchase_id']!, _purchase_idMeta));
    }
    if (data.containsKey('current_lesson')) {
      context.handle(
          _current_lessonMeta,
          current_lesson.isAcceptableOrUnknown(
              data['current_lesson']!, _current_lessonMeta));
    }
    if (data.containsKey('current_part')) {
      context.handle(
          _current_partMeta,
          current_part.isAcceptableOrUnknown(
              data['current_part']!, _current_partMeta));
    }
    if (data.containsKey('downloaded')) {
      context.handle(
          _downloadedMeta,
          downloaded.isAcceptableOrUnknown(
              data['downloaded']!, _downloadedMeta));
    }
    if (data.containsKey('last_listened')) {
      context.handle(
          _last_listenedMeta,
          last_listened.isAcceptableOrUnknown(
              data['last_listened']!, _last_listenedMeta));
    }
    if (data.containsKey('validated')) {
      context.handle(_validatedMeta,
          validated.isAcceptableOrUnknown(data['validated']!, _validatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MyCourse map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MyCourse.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MyCoursesTable createAlias(String alias) {
    return $MyCoursesTable(attachedDatabase, alias);
  }
}

class Course extends DataClass implements Insertable<Course> {
  final String id;
  final String language;
  final String? level;
  final String level_name;
  final String title;
  final String topic;
  final String translation;
  final String? image;
  final String description;
  final int lessons_count;
  final String audio_storage;
  final bool is_updating;
  final bool need_update;
  final int player_version;
  final int course_version;
  final int demo;
  final bool hidden;
  final String? android_product_id;
  final String? ios_product_id;
  final String? ad_mob_banner_unit_id_android;
  final String? ad_mob_banner_unit_id_ios;
  Course(
      {required this.id,
      required this.language,
      this.level,
      required this.level_name,
      required this.title,
      required this.topic,
      required this.translation,
      this.image,
      required this.description,
      required this.lessons_count,
      required this.audio_storage,
      required this.is_updating,
      required this.need_update,
      required this.player_version,
      required this.course_version,
      required this.demo,
      required this.hidden,
      this.android_product_id,
      this.ios_product_id,
      this.ad_mob_banner_unit_id_android,
      this.ad_mob_banner_unit_id_ios});
  factory Course.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Course(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      language: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}language'])!,
      level: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}level']),
      level_name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}level_name'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      topic: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}topic'])!,
      translation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}translation'])!,
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      lessons_count: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lessons_count'])!,
      audio_storage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audio_storage'])!,
      is_updating: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_updating'])!,
      need_update: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}need_update'])!,
      player_version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}player_version'])!,
      course_version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}course_version'])!,
      demo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}demo'])!,
      hidden: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hidden'])!,
      android_product_id: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}android_product_id']),
      ios_product_id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ios_product_id']),
      ad_mob_banner_unit_id_android: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}ad_mob_banner_unit_id_android']),
      ad_mob_banner_unit_id_ios: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}ad_mob_banner_unit_id_ios']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['language'] = Variable<String>(language);
    if (!nullToAbsent || level != null) {
      map['level'] = Variable<String?>(level);
    }
    map['level_name'] = Variable<String>(level_name);
    map['title'] = Variable<String>(title);
    map['topic'] = Variable<String>(topic);
    map['translation'] = Variable<String>(translation);
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String?>(image);
    }
    map['description'] = Variable<String>(description);
    map['lessons_count'] = Variable<int>(lessons_count);
    map['audio_storage'] = Variable<String>(audio_storage);
    map['is_updating'] = Variable<bool>(is_updating);
    map['need_update'] = Variable<bool>(need_update);
    map['player_version'] = Variable<int>(player_version);
    map['course_version'] = Variable<int>(course_version);
    map['demo'] = Variable<int>(demo);
    map['hidden'] = Variable<bool>(hidden);
    if (!nullToAbsent || android_product_id != null) {
      map['android_product_id'] = Variable<String?>(android_product_id);
    }
    if (!nullToAbsent || ios_product_id != null) {
      map['ios_product_id'] = Variable<String?>(ios_product_id);
    }
    if (!nullToAbsent || ad_mob_banner_unit_id_android != null) {
      map['ad_mob_banner_unit_id_android'] =
          Variable<String?>(ad_mob_banner_unit_id_android);
    }
    if (!nullToAbsent || ad_mob_banner_unit_id_ios != null) {
      map['ad_mob_banner_unit_id_ios'] =
          Variable<String?>(ad_mob_banner_unit_id_ios);
    }
    return map;
  }

  CoursesCompanion toCompanion(bool nullToAbsent) {
    return CoursesCompanion(
      id: Value(id),
      language: Value(language),
      level:
          level == null && nullToAbsent ? const Value.absent() : Value(level),
      level_name: Value(level_name),
      title: Value(title),
      topic: Value(topic),
      translation: Value(translation),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      description: Value(description),
      lessons_count: Value(lessons_count),
      audio_storage: Value(audio_storage),
      is_updating: Value(is_updating),
      need_update: Value(need_update),
      player_version: Value(player_version),
      course_version: Value(course_version),
      demo: Value(demo),
      hidden: Value(hidden),
      android_product_id: android_product_id == null && nullToAbsent
          ? const Value.absent()
          : Value(android_product_id),
      ios_product_id: ios_product_id == null && nullToAbsent
          ? const Value.absent()
          : Value(ios_product_id),
      ad_mob_banner_unit_id_android:
          ad_mob_banner_unit_id_android == null && nullToAbsent
              ? const Value.absent()
              : Value(ad_mob_banner_unit_id_android),
      ad_mob_banner_unit_id_ios:
          ad_mob_banner_unit_id_ios == null && nullToAbsent
              ? const Value.absent()
              : Value(ad_mob_banner_unit_id_ios),
    );
  }

  factory Course.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Course(
      id: serializer.fromJson<String>(json['id']),
      language: serializer.fromJson<String>(json['language']),
      level: serializer.fromJson<String?>(json['level']),
      level_name: serializer.fromJson<String>(json['level_name']),
      title: serializer.fromJson<String>(json['title']),
      topic: serializer.fromJson<String>(json['topic']),
      translation: serializer.fromJson<String>(json['translation']),
      image: serializer.fromJson<String?>(json['image']),
      description: serializer.fromJson<String>(json['description']),
      lessons_count: serializer.fromJson<int>(json['lessons_count']),
      audio_storage: serializer.fromJson<String>(json['audio_storage']),
      is_updating: serializer.fromJson<bool>(json['is_updating']),
      need_update: serializer.fromJson<bool>(json['need_update']),
      player_version: serializer.fromJson<int>(json['player_version']),
      course_version: serializer.fromJson<int>(json['course_version']),
      demo: serializer.fromJson<int>(json['demo']),
      hidden: serializer.fromJson<bool>(json['hidden']),
      android_product_id:
          serializer.fromJson<String?>(json['android_product_id']),
      ios_product_id: serializer.fromJson<String?>(json['ios_product_id']),
      ad_mob_banner_unit_id_android:
          serializer.fromJson<String?>(json['ad_mob_banner_unit_id_android']),
      ad_mob_banner_unit_id_ios:
          serializer.fromJson<String?>(json['ad_mob_banner_unit_id_ios']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'language': serializer.toJson<String>(language),
      'level': serializer.toJson<String?>(level),
      'level_name': serializer.toJson<String>(level_name),
      'title': serializer.toJson<String>(title),
      'topic': serializer.toJson<String>(topic),
      'translation': serializer.toJson<String>(translation),
      'image': serializer.toJson<String?>(image),
      'description': serializer.toJson<String>(description),
      'lessons_count': serializer.toJson<int>(lessons_count),
      'audio_storage': serializer.toJson<String>(audio_storage),
      'is_updating': serializer.toJson<bool>(is_updating),
      'need_update': serializer.toJson<bool>(need_update),
      'player_version': serializer.toJson<int>(player_version),
      'course_version': serializer.toJson<int>(course_version),
      'demo': serializer.toJson<int>(demo),
      'hidden': serializer.toJson<bool>(hidden),
      'android_product_id': serializer.toJson<String?>(android_product_id),
      'ios_product_id': serializer.toJson<String?>(ios_product_id),
      'ad_mob_banner_unit_id_android':
          serializer.toJson<String?>(ad_mob_banner_unit_id_android),
      'ad_mob_banner_unit_id_ios':
          serializer.toJson<String?>(ad_mob_banner_unit_id_ios),
    };
  }

  Course copyWith(
          {String? id,
          String? language,
          String? level,
          String? level_name,
          String? title,
          String? topic,
          String? translation,
          String? image,
          String? description,
          int? lessons_count,
          String? audio_storage,
          bool? is_updating,
          bool? need_update,
          int? player_version,
          int? course_version,
          int? demo,
          bool? hidden,
          String? android_product_id,
          String? ios_product_id,
          String? ad_mob_banner_unit_id_android,
          String? ad_mob_banner_unit_id_ios}) =>
      Course(
        id: id ?? this.id,
        language: language ?? this.language,
        level: level ?? this.level,
        level_name: level_name ?? this.level_name,
        title: title ?? this.title,
        topic: topic ?? this.topic,
        translation: translation ?? this.translation,
        image: image ?? this.image,
        description: description ?? this.description,
        lessons_count: lessons_count ?? this.lessons_count,
        audio_storage: audio_storage ?? this.audio_storage,
        is_updating: is_updating ?? this.is_updating,
        need_update: need_update ?? this.need_update,
        player_version: player_version ?? this.player_version,
        course_version: course_version ?? this.course_version,
        demo: demo ?? this.demo,
        hidden: hidden ?? this.hidden,
        android_product_id: android_product_id ?? this.android_product_id,
        ios_product_id: ios_product_id ?? this.ios_product_id,
        ad_mob_banner_unit_id_android:
            ad_mob_banner_unit_id_android ?? this.ad_mob_banner_unit_id_android,
        ad_mob_banner_unit_id_ios:
            ad_mob_banner_unit_id_ios ?? this.ad_mob_banner_unit_id_ios,
      );
  @override
  String toString() {
    return (StringBuffer('Course(')
          ..write('id: $id, ')
          ..write('language: $language, ')
          ..write('level: $level, ')
          ..write('level_name: $level_name, ')
          ..write('title: $title, ')
          ..write('topic: $topic, ')
          ..write('translation: $translation, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('lessons_count: $lessons_count, ')
          ..write('audio_storage: $audio_storage, ')
          ..write('is_updating: $is_updating, ')
          ..write('need_update: $need_update, ')
          ..write('player_version: $player_version, ')
          ..write('course_version: $course_version, ')
          ..write('demo: $demo, ')
          ..write('hidden: $hidden, ')
          ..write('android_product_id: $android_product_id, ')
          ..write('ios_product_id: $ios_product_id, ')
          ..write(
              'ad_mob_banner_unit_id_android: $ad_mob_banner_unit_id_android, ')
          ..write('ad_mob_banner_unit_id_ios: $ad_mob_banner_unit_id_ios')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        language,
        level,
        level_name,
        title,
        topic,
        translation,
        image,
        description,
        lessons_count,
        audio_storage,
        is_updating,
        need_update,
        player_version,
        course_version,
        demo,
        hidden,
        android_product_id,
        ios_product_id,
        ad_mob_banner_unit_id_android,
        ad_mob_banner_unit_id_ios
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Course &&
          other.id == this.id &&
          other.language == this.language &&
          other.level == this.level &&
          other.level_name == this.level_name &&
          other.title == this.title &&
          other.topic == this.topic &&
          other.translation == this.translation &&
          other.image == this.image &&
          other.description == this.description &&
          other.lessons_count == this.lessons_count &&
          other.audio_storage == this.audio_storage &&
          other.is_updating == this.is_updating &&
          other.need_update == this.need_update &&
          other.player_version == this.player_version &&
          other.course_version == this.course_version &&
          other.demo == this.demo &&
          other.hidden == this.hidden &&
          other.android_product_id == this.android_product_id &&
          other.ios_product_id == this.ios_product_id &&
          other.ad_mob_banner_unit_id_android ==
              this.ad_mob_banner_unit_id_android &&
          other.ad_mob_banner_unit_id_ios == this.ad_mob_banner_unit_id_ios);
}

class CoursesCompanion extends UpdateCompanion<Course> {
  final Value<String> id;
  final Value<String> language;
  final Value<String?> level;
  final Value<String> level_name;
  final Value<String> title;
  final Value<String> topic;
  final Value<String> translation;
  final Value<String?> image;
  final Value<String> description;
  final Value<int> lessons_count;
  final Value<String> audio_storage;
  final Value<bool> is_updating;
  final Value<bool> need_update;
  final Value<int> player_version;
  final Value<int> course_version;
  final Value<int> demo;
  final Value<bool> hidden;
  final Value<String?> android_product_id;
  final Value<String?> ios_product_id;
  final Value<String?> ad_mob_banner_unit_id_android;
  final Value<String?> ad_mob_banner_unit_id_ios;
  const CoursesCompanion({
    this.id = const Value.absent(),
    this.language = const Value.absent(),
    this.level = const Value.absent(),
    this.level_name = const Value.absent(),
    this.title = const Value.absent(),
    this.topic = const Value.absent(),
    this.translation = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
    this.lessons_count = const Value.absent(),
    this.audio_storage = const Value.absent(),
    this.is_updating = const Value.absent(),
    this.need_update = const Value.absent(),
    this.player_version = const Value.absent(),
    this.course_version = const Value.absent(),
    this.demo = const Value.absent(),
    this.hidden = const Value.absent(),
    this.android_product_id = const Value.absent(),
    this.ios_product_id = const Value.absent(),
    this.ad_mob_banner_unit_id_android = const Value.absent(),
    this.ad_mob_banner_unit_id_ios = const Value.absent(),
  });
  CoursesCompanion.insert({
    required String id,
    required String language,
    this.level = const Value.absent(),
    required String level_name,
    required String title,
    required String topic,
    required String translation,
    this.image = const Value.absent(),
    required String description,
    required int lessons_count,
    required String audio_storage,
    this.is_updating = const Value.absent(),
    this.need_update = const Value.absent(),
    required int player_version,
    required int course_version,
    this.demo = const Value.absent(),
    this.hidden = const Value.absent(),
    this.android_product_id = const Value.absent(),
    this.ios_product_id = const Value.absent(),
    this.ad_mob_banner_unit_id_android = const Value.absent(),
    this.ad_mob_banner_unit_id_ios = const Value.absent(),
  })  : id = Value(id),
        language = Value(language),
        level_name = Value(level_name),
        title = Value(title),
        topic = Value(topic),
        translation = Value(translation),
        description = Value(description),
        lessons_count = Value(lessons_count),
        audio_storage = Value(audio_storage),
        player_version = Value(player_version),
        course_version = Value(course_version);
  static Insertable<Course> custom({
    Expression<String>? id,
    Expression<String>? language,
    Expression<String?>? level,
    Expression<String>? level_name,
    Expression<String>? title,
    Expression<String>? topic,
    Expression<String>? translation,
    Expression<String?>? image,
    Expression<String>? description,
    Expression<int>? lessons_count,
    Expression<String>? audio_storage,
    Expression<bool>? is_updating,
    Expression<bool>? need_update,
    Expression<int>? player_version,
    Expression<int>? course_version,
    Expression<int>? demo,
    Expression<bool>? hidden,
    Expression<String?>? android_product_id,
    Expression<String?>? ios_product_id,
    Expression<String?>? ad_mob_banner_unit_id_android,
    Expression<String?>? ad_mob_banner_unit_id_ios,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (language != null) 'language': language,
      if (level != null) 'level': level,
      if (level_name != null) 'level_name': level_name,
      if (title != null) 'title': title,
      if (topic != null) 'topic': topic,
      if (translation != null) 'translation': translation,
      if (image != null) 'image': image,
      if (description != null) 'description': description,
      if (lessons_count != null) 'lessons_count': lessons_count,
      if (audio_storage != null) 'audio_storage': audio_storage,
      if (is_updating != null) 'is_updating': is_updating,
      if (need_update != null) 'need_update': need_update,
      if (player_version != null) 'player_version': player_version,
      if (course_version != null) 'course_version': course_version,
      if (demo != null) 'demo': demo,
      if (hidden != null) 'hidden': hidden,
      if (android_product_id != null) 'android_product_id': android_product_id,
      if (ios_product_id != null) 'ios_product_id': ios_product_id,
      if (ad_mob_banner_unit_id_android != null)
        'ad_mob_banner_unit_id_android': ad_mob_banner_unit_id_android,
      if (ad_mob_banner_unit_id_ios != null)
        'ad_mob_banner_unit_id_ios': ad_mob_banner_unit_id_ios,
    });
  }

  CoursesCompanion copyWith(
      {Value<String>? id,
      Value<String>? language,
      Value<String?>? level,
      Value<String>? level_name,
      Value<String>? title,
      Value<String>? topic,
      Value<String>? translation,
      Value<String?>? image,
      Value<String>? description,
      Value<int>? lessons_count,
      Value<String>? audio_storage,
      Value<bool>? is_updating,
      Value<bool>? need_update,
      Value<int>? player_version,
      Value<int>? course_version,
      Value<int>? demo,
      Value<bool>? hidden,
      Value<String?>? android_product_id,
      Value<String?>? ios_product_id,
      Value<String?>? ad_mob_banner_unit_id_android,
      Value<String?>? ad_mob_banner_unit_id_ios}) {
    return CoursesCompanion(
      id: id ?? this.id,
      language: language ?? this.language,
      level: level ?? this.level,
      level_name: level_name ?? this.level_name,
      title: title ?? this.title,
      topic: topic ?? this.topic,
      translation: translation ?? this.translation,
      image: image ?? this.image,
      description: description ?? this.description,
      lessons_count: lessons_count ?? this.lessons_count,
      audio_storage: audio_storage ?? this.audio_storage,
      is_updating: is_updating ?? this.is_updating,
      need_update: need_update ?? this.need_update,
      player_version: player_version ?? this.player_version,
      course_version: course_version ?? this.course_version,
      demo: demo ?? this.demo,
      hidden: hidden ?? this.hidden,
      android_product_id: android_product_id ?? this.android_product_id,
      ios_product_id: ios_product_id ?? this.ios_product_id,
      ad_mob_banner_unit_id_android:
          ad_mob_banner_unit_id_android ?? this.ad_mob_banner_unit_id_android,
      ad_mob_banner_unit_id_ios:
          ad_mob_banner_unit_id_ios ?? this.ad_mob_banner_unit_id_ios,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (level.present) {
      map['level'] = Variable<String?>(level.value);
    }
    if (level_name.present) {
      map['level_name'] = Variable<String>(level_name.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (topic.present) {
      map['topic'] = Variable<String>(topic.value);
    }
    if (translation.present) {
      map['translation'] = Variable<String>(translation.value);
    }
    if (image.present) {
      map['image'] = Variable<String?>(image.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (lessons_count.present) {
      map['lessons_count'] = Variable<int>(lessons_count.value);
    }
    if (audio_storage.present) {
      map['audio_storage'] = Variable<String>(audio_storage.value);
    }
    if (is_updating.present) {
      map['is_updating'] = Variable<bool>(is_updating.value);
    }
    if (need_update.present) {
      map['need_update'] = Variable<bool>(need_update.value);
    }
    if (player_version.present) {
      map['player_version'] = Variable<int>(player_version.value);
    }
    if (course_version.present) {
      map['course_version'] = Variable<int>(course_version.value);
    }
    if (demo.present) {
      map['demo'] = Variable<int>(demo.value);
    }
    if (hidden.present) {
      map['hidden'] = Variable<bool>(hidden.value);
    }
    if (android_product_id.present) {
      map['android_product_id'] = Variable<String?>(android_product_id.value);
    }
    if (ios_product_id.present) {
      map['ios_product_id'] = Variable<String?>(ios_product_id.value);
    }
    if (ad_mob_banner_unit_id_android.present) {
      map['ad_mob_banner_unit_id_android'] =
          Variable<String?>(ad_mob_banner_unit_id_android.value);
    }
    if (ad_mob_banner_unit_id_ios.present) {
      map['ad_mob_banner_unit_id_ios'] =
          Variable<String?>(ad_mob_banner_unit_id_ios.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoursesCompanion(')
          ..write('id: $id, ')
          ..write('language: $language, ')
          ..write('level: $level, ')
          ..write('level_name: $level_name, ')
          ..write('title: $title, ')
          ..write('topic: $topic, ')
          ..write('translation: $translation, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('lessons_count: $lessons_count, ')
          ..write('audio_storage: $audio_storage, ')
          ..write('is_updating: $is_updating, ')
          ..write('need_update: $need_update, ')
          ..write('player_version: $player_version, ')
          ..write('course_version: $course_version, ')
          ..write('demo: $demo, ')
          ..write('hidden: $hidden, ')
          ..write('android_product_id: $android_product_id, ')
          ..write('ios_product_id: $ios_product_id, ')
          ..write(
              'ad_mob_banner_unit_id_android: $ad_mob_banner_unit_id_android, ')
          ..write('ad_mob_banner_unit_id_ios: $ad_mob_banner_unit_id_ios')
          ..write(')'))
        .toString();
  }
}

class $CoursesTable extends Courses with TableInfo<$CoursesTable, Course> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoursesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _languageMeta = const VerificationMeta('language');
  @override
  late final GeneratedColumn<String?> language = GeneratedColumn<String?>(
      'language', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String?> level = GeneratedColumn<String?>(
      'level', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _level_nameMeta = const VerificationMeta('level_name');
  @override
  late final GeneratedColumn<String?> level_name = GeneratedColumn<String?>(
      'level_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _topicMeta = const VerificationMeta('topic');
  @override
  late final GeneratedColumn<String?> topic = GeneratedColumn<String?>(
      'topic', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _translationMeta =
      const VerificationMeta('translation');
  @override
  late final GeneratedColumn<String?> translation = GeneratedColumn<String?>(
      'translation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String?> image = GeneratedColumn<String?>(
      'image', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lessons_countMeta =
      const VerificationMeta('lessons_count');
  @override
  late final GeneratedColumn<int?> lessons_count = GeneratedColumn<int?>(
      'lessons_count', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _audio_storageMeta =
      const VerificationMeta('audio_storage');
  @override
  late final GeneratedColumn<String?> audio_storage = GeneratedColumn<String?>(
      'audio_storage', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _is_updatingMeta =
      const VerificationMeta('is_updating');
  @override
  late final GeneratedColumn<bool?> is_updating = GeneratedColumn<bool?>(
      'is_updating', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_updating IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _need_updateMeta =
      const VerificationMeta('need_update');
  @override
  late final GeneratedColumn<bool?> need_update = GeneratedColumn<bool?>(
      'need_update', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (need_update IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _player_versionMeta =
      const VerificationMeta('player_version');
  @override
  late final GeneratedColumn<int?> player_version = GeneratedColumn<int?>(
      'player_version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _course_versionMeta =
      const VerificationMeta('course_version');
  @override
  late final GeneratedColumn<int?> course_version = GeneratedColumn<int?>(
      'course_version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _demoMeta = const VerificationMeta('demo');
  @override
  late final GeneratedColumn<int?> demo = GeneratedColumn<int?>(
      'demo', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(1000));
  final VerificationMeta _hiddenMeta = const VerificationMeta('hidden');
  @override
  late final GeneratedColumn<bool?> hidden = GeneratedColumn<bool?>(
      'hidden', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (hidden IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _android_product_idMeta =
      const VerificationMeta('android_product_id');
  @override
  late final GeneratedColumn<String?> android_product_id =
      GeneratedColumn<String?>('android_product_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _ios_product_idMeta =
      const VerificationMeta('ios_product_id');
  @override
  late final GeneratedColumn<String?> ios_product_id = GeneratedColumn<String?>(
      'ios_product_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _ad_mob_banner_unit_id_androidMeta =
      const VerificationMeta('ad_mob_banner_unit_id_android');
  @override
  late final GeneratedColumn<String?> ad_mob_banner_unit_id_android =
      GeneratedColumn<String?>(
          'ad_mob_banner_unit_id_android', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _ad_mob_banner_unit_id_iosMeta =
      const VerificationMeta('ad_mob_banner_unit_id_ios');
  @override
  late final GeneratedColumn<String?> ad_mob_banner_unit_id_ios =
      GeneratedColumn<String?>('ad_mob_banner_unit_id_ios', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        language,
        level,
        level_name,
        title,
        topic,
        translation,
        image,
        description,
        lessons_count,
        audio_storage,
        is_updating,
        need_update,
        player_version,
        course_version,
        demo,
        hidden,
        android_product_id,
        ios_product_id,
        ad_mob_banner_unit_id_android,
        ad_mob_banner_unit_id_ios
      ];
  @override
  String get aliasedName => _alias ?? 'courses';
  @override
  String get actualTableName => 'courses';
  @override
  VerificationContext validateIntegrity(Insertable<Course> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    }
    if (data.containsKey('level_name')) {
      context.handle(
          _level_nameMeta,
          level_name.isAcceptableOrUnknown(
              data['level_name']!, _level_nameMeta));
    } else if (isInserting) {
      context.missing(_level_nameMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('topic')) {
      context.handle(
          _topicMeta, topic.isAcceptableOrUnknown(data['topic']!, _topicMeta));
    } else if (isInserting) {
      context.missing(_topicMeta);
    }
    if (data.containsKey('translation')) {
      context.handle(
          _translationMeta,
          translation.isAcceptableOrUnknown(
              data['translation']!, _translationMeta));
    } else if (isInserting) {
      context.missing(_translationMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('lessons_count')) {
      context.handle(
          _lessons_countMeta,
          lessons_count.isAcceptableOrUnknown(
              data['lessons_count']!, _lessons_countMeta));
    } else if (isInserting) {
      context.missing(_lessons_countMeta);
    }
    if (data.containsKey('audio_storage')) {
      context.handle(
          _audio_storageMeta,
          audio_storage.isAcceptableOrUnknown(
              data['audio_storage']!, _audio_storageMeta));
    } else if (isInserting) {
      context.missing(_audio_storageMeta);
    }
    if (data.containsKey('is_updating')) {
      context.handle(
          _is_updatingMeta,
          is_updating.isAcceptableOrUnknown(
              data['is_updating']!, _is_updatingMeta));
    }
    if (data.containsKey('need_update')) {
      context.handle(
          _need_updateMeta,
          need_update.isAcceptableOrUnknown(
              data['need_update']!, _need_updateMeta));
    }
    if (data.containsKey('player_version')) {
      context.handle(
          _player_versionMeta,
          player_version.isAcceptableOrUnknown(
              data['player_version']!, _player_versionMeta));
    } else if (isInserting) {
      context.missing(_player_versionMeta);
    }
    if (data.containsKey('course_version')) {
      context.handle(
          _course_versionMeta,
          course_version.isAcceptableOrUnknown(
              data['course_version']!, _course_versionMeta));
    } else if (isInserting) {
      context.missing(_course_versionMeta);
    }
    if (data.containsKey('demo')) {
      context.handle(
          _demoMeta, demo.isAcceptableOrUnknown(data['demo']!, _demoMeta));
    }
    if (data.containsKey('hidden')) {
      context.handle(_hiddenMeta,
          hidden.isAcceptableOrUnknown(data['hidden']!, _hiddenMeta));
    }
    if (data.containsKey('android_product_id')) {
      context.handle(
          _android_product_idMeta,
          android_product_id.isAcceptableOrUnknown(
              data['android_product_id']!, _android_product_idMeta));
    }
    if (data.containsKey('ios_product_id')) {
      context.handle(
          _ios_product_idMeta,
          ios_product_id.isAcceptableOrUnknown(
              data['ios_product_id']!, _ios_product_idMeta));
    }
    if (data.containsKey('ad_mob_banner_unit_id_android')) {
      context.handle(
          _ad_mob_banner_unit_id_androidMeta,
          ad_mob_banner_unit_id_android.isAcceptableOrUnknown(
              data['ad_mob_banner_unit_id_android']!,
              _ad_mob_banner_unit_id_androidMeta));
    }
    if (data.containsKey('ad_mob_banner_unit_id_ios')) {
      context.handle(
          _ad_mob_banner_unit_id_iosMeta,
          ad_mob_banner_unit_id_ios.isAcceptableOrUnknown(
              data['ad_mob_banner_unit_id_ios']!,
              _ad_mob_banner_unit_id_iosMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Course map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Course.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CoursesTable createAlias(String alias) {
    return $CoursesTable(attachedDatabase, alias);
  }
}

class Topic extends DataClass implements Insertable<Topic> {
  final String id;
  final String type;
  Topic({required this.id, required this.type});
  factory Topic.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Topic(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['type'] = Variable<String>(type);
    return map;
  }

  TopicsCompanion toCompanion(bool nullToAbsent) {
    return TopicsCompanion(
      id: Value(id),
      type: Value(type),
    );
  }

  factory Topic.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Topic(
      id: serializer.fromJson<String>(json['id']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'type': serializer.toJson<String>(type),
    };
  }

  Topic copyWith({String? id, String? type}) => Topic(
        id: id ?? this.id,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('Topic(')
          ..write('id: $id, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Topic && other.id == this.id && other.type == this.type);
}

class TopicsCompanion extends UpdateCompanion<Topic> {
  final Value<String> id;
  final Value<String> type;
  const TopicsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
  });
  TopicsCompanion.insert({
    required String id,
    required String type,
  })  : id = Value(id),
        type = Value(type);
  static Insertable<Topic> custom({
    Expression<String>? id,
    Expression<String>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    });
  }

  TopicsCompanion copyWith({Value<String>? id, Value<String>? type}) {
    return TopicsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopicsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $TopicsTable extends Topics with TableInfo<$TopicsTable, Topic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TopicsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, type];
  @override
  String get aliasedName => _alias ?? 'topics';
  @override
  String get actualTableName => 'topics';
  @override
  VerificationContext validateIntegrity(Insertable<Topic> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Topic map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Topic.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TopicsTable createAlias(String alias) {
    return $TopicsTable(attachedDatabase, alias);
  }
}

class Lesson extends DataClass implements Insertable<Lesson> {
  final String id;
  final String course;
  final int order;
  final String title;
  final String? image;
  final String? description;
  Lesson(
      {required this.id,
      required this.course,
      required this.order,
      required this.title,
      this.image,
      this.description});
  factory Lesson.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Lesson(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      course: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}course'])!,
      order: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['course'] = Variable<String>(course);
    map['order_'] = Variable<int>(order);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String?>(image);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    return map;
  }

  LessonsCompanion toCompanion(bool nullToAbsent) {
    return LessonsCompanion(
      id: Value(id),
      course: Value(course),
      order: Value(order),
      title: Value(title),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory Lesson.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Lesson(
      id: serializer.fromJson<String>(json['id']),
      course: serializer.fromJson<String>(json['course']),
      order: serializer.fromJson<int>(json['order']),
      title: serializer.fromJson<String>(json['title']),
      image: serializer.fromJson<String?>(json['image']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'course': serializer.toJson<String>(course),
      'order': serializer.toJson<int>(order),
      'title': serializer.toJson<String>(title),
      'image': serializer.toJson<String?>(image),
      'description': serializer.toJson<String?>(description),
    };
  }

  Lesson copyWith(
          {String? id,
          String? course,
          int? order,
          String? title,
          String? image,
          String? description}) =>
      Lesson(
        id: id ?? this.id,
        course: course ?? this.course,
        order: order ?? this.order,
        title: title ?? this.title,
        image: image ?? this.image,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Lesson(')
          ..write('id: $id, ')
          ..write('course: $course, ')
          ..write('order: $order, ')
          ..write('title: $title, ')
          ..write('image: $image, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, course, order, title, image, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Lesson &&
          other.id == this.id &&
          other.course == this.course &&
          other.order == this.order &&
          other.title == this.title &&
          other.image == this.image &&
          other.description == this.description);
}

class LessonsCompanion extends UpdateCompanion<Lesson> {
  final Value<String> id;
  final Value<String> course;
  final Value<int> order;
  final Value<String> title;
  final Value<String?> image;
  final Value<String?> description;
  const LessonsCompanion({
    this.id = const Value.absent(),
    this.course = const Value.absent(),
    this.order = const Value.absent(),
    this.title = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
  });
  LessonsCompanion.insert({
    required String id,
    required String course,
    required int order,
    required String title,
    this.image = const Value.absent(),
    this.description = const Value.absent(),
  })  : id = Value(id),
        course = Value(course),
        order = Value(order),
        title = Value(title);
  static Insertable<Lesson> custom({
    Expression<String>? id,
    Expression<String>? course,
    Expression<int>? order,
    Expression<String>? title,
    Expression<String?>? image,
    Expression<String?>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (course != null) 'course': course,
      if (order != null) 'order_': order,
      if (title != null) 'title': title,
      if (image != null) 'image': image,
      if (description != null) 'description': description,
    });
  }

  LessonsCompanion copyWith(
      {Value<String>? id,
      Value<String>? course,
      Value<int>? order,
      Value<String>? title,
      Value<String?>? image,
      Value<String?>? description}) {
    return LessonsCompanion(
      id: id ?? this.id,
      course: course ?? this.course,
      order: order ?? this.order,
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (course.present) {
      map['course'] = Variable<String>(course.value);
    }
    if (order.present) {
      map['order_'] = Variable<int>(order.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (image.present) {
      map['image'] = Variable<String?>(image.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonsCompanion(')
          ..write('id: $id, ')
          ..write('course: $course, ')
          ..write('order: $order, ')
          ..write('title: $title, ')
          ..write('image: $image, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $LessonsTable extends Lessons with TableInfo<$LessonsTable, Lesson> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _courseMeta = const VerificationMeta('course');
  @override
  late final GeneratedColumn<String?> course = GeneratedColumn<String?>(
      'course', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int?> order = GeneratedColumn<int?>(
      'order_', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String?> image = GeneratedColumn<String?>(
      'image', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, course, order, title, image, description];
  @override
  String get aliasedName => _alias ?? 'lessons';
  @override
  String get actualTableName => 'lessons';
  @override
  VerificationContext validateIntegrity(Insertable<Lesson> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('course')) {
      context.handle(_courseMeta,
          course.isAcceptableOrUnknown(data['course']!, _courseMeta));
    } else if (isInserting) {
      context.missing(_courseMeta);
    }
    if (data.containsKey('order_')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order_']!, _orderMeta));
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Lesson map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Lesson.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LessonsTable createAlias(String alias) {
    return $LessonsTable(attachedDatabase, alias);
  }
}

class Exercise extends DataClass implements Insertable<Exercise> {
  final String id;
  final String? lesson_id;
  final int? order;
  final String? course;
  Exercise({required this.id, this.lesson_id, this.order, this.course});
  factory Exercise.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Exercise(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      lesson_id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lesson_id']),
      order: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_']),
      course: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}course']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lesson_id != null) {
      map['lesson_id'] = Variable<String?>(lesson_id);
    }
    if (!nullToAbsent || order != null) {
      map['order_'] = Variable<int?>(order);
    }
    if (!nullToAbsent || course != null) {
      map['course'] = Variable<String?>(course);
    }
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      id: Value(id),
      lesson_id: lesson_id == null && nullToAbsent
          ? const Value.absent()
          : Value(lesson_id),
      order:
          order == null && nullToAbsent ? const Value.absent() : Value(order),
      course:
          course == null && nullToAbsent ? const Value.absent() : Value(course),
    );
  }

  factory Exercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Exercise(
      id: serializer.fromJson<String>(json['id']),
      lesson_id: serializer.fromJson<String?>(json['lesson_id']),
      order: serializer.fromJson<int?>(json['order']),
      course: serializer.fromJson<String?>(json['course']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lesson_id': serializer.toJson<String?>(lesson_id),
      'order': serializer.toJson<int?>(order),
      'course': serializer.toJson<String?>(course),
    };
  }

  Exercise copyWith(
          {String? id, String? lesson_id, int? order, String? course}) =>
      Exercise(
        id: id ?? this.id,
        lesson_id: lesson_id ?? this.lesson_id,
        order: order ?? this.order,
        course: course ?? this.course,
      );
  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('id: $id, ')
          ..write('lesson_id: $lesson_id, ')
          ..write('order: $order, ')
          ..write('course: $course')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lesson_id, order, course);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.id == this.id &&
          other.lesson_id == this.lesson_id &&
          other.order == this.order &&
          other.course == this.course);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<String> id;
  final Value<String?> lesson_id;
  final Value<int?> order;
  final Value<String?> course;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.lesson_id = const Value.absent(),
    this.order = const Value.absent(),
    this.course = const Value.absent(),
  });
  ExercisesCompanion.insert({
    required String id,
    this.lesson_id = const Value.absent(),
    this.order = const Value.absent(),
    this.course = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Exercise> custom({
    Expression<String>? id,
    Expression<String?>? lesson_id,
    Expression<int?>? order,
    Expression<String?>? course,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lesson_id != null) 'lesson_id': lesson_id,
      if (order != null) 'order_': order,
      if (course != null) 'course': course,
    });
  }

  ExercisesCompanion copyWith(
      {Value<String>? id,
      Value<String?>? lesson_id,
      Value<int?>? order,
      Value<String?>? course}) {
    return ExercisesCompanion(
      id: id ?? this.id,
      lesson_id: lesson_id ?? this.lesson_id,
      order: order ?? this.order,
      course: course ?? this.course,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lesson_id.present) {
      map['lesson_id'] = Variable<String?>(lesson_id.value);
    }
    if (order.present) {
      map['order_'] = Variable<int?>(order.value);
    }
    if (course.present) {
      map['course'] = Variable<String?>(course.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('id: $id, ')
          ..write('lesson_id: $lesson_id, ')
          ..write('order: $order, ')
          ..write('course: $course')
          ..write(')'))
        .toString();
  }
}

class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, Exercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExercisesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lesson_idMeta = const VerificationMeta('lesson_id');
  @override
  late final GeneratedColumn<String?> lesson_id = GeneratedColumn<String?>(
      'lesson_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int?> order = GeneratedColumn<int?>(
      'order_', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _courseMeta = const VerificationMeta('course');
  @override
  late final GeneratedColumn<String?> course = GeneratedColumn<String?>(
      'course', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, lesson_id, order, course];
  @override
  String get aliasedName => _alias ?? 'exercises';
  @override
  String get actualTableName => 'exercises';
  @override
  VerificationContext validateIntegrity(Insertable<Exercise> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('lesson_id')) {
      context.handle(_lesson_idMeta,
          lesson_id.isAcceptableOrUnknown(data['lesson_id']!, _lesson_idMeta));
    }
    if (data.containsKey('order_')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order_']!, _orderMeta));
    }
    if (data.containsKey('course')) {
      context.handle(_courseMeta,
          course.isAcceptableOrUnknown(data['course']!, _courseMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Exercise.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }
}

class ExerciseContent extends DataClass implements Insertable<ExerciseContent> {
  final int id;
  final String? course;
  final String? exercise_id;
  final int? order;
  final String? c_value;
  final String? c_audio;
  final int c_duration;
  final String? c_linear_audio;
  final int c_linear_duration;
  final String? c_chunks;
  final String? c_extra_chunks;
  final String? c_capitalized_words;
  final String? t_value;
  final String? t_audio;
  final int t_duration;
  final String? t_linear_audio;
  final int t_linear_duration;
  ExerciseContent(
      {required this.id,
      this.course,
      this.exercise_id,
      this.order,
      this.c_value,
      this.c_audio,
      required this.c_duration,
      this.c_linear_audio,
      required this.c_linear_duration,
      this.c_chunks,
      this.c_extra_chunks,
      this.c_capitalized_words,
      this.t_value,
      this.t_audio,
      required this.t_duration,
      this.t_linear_audio,
      required this.t_linear_duration});
  factory ExerciseContent.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ExerciseContent(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      course: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}course']),
      exercise_id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}exercise_id']),
      order: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_']),
      c_value: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}c_value']),
      c_audio: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}c_audio']),
      c_duration: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}c_duration'])!,
      c_linear_audio: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}c_linear_audio']),
      c_linear_duration: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}c_linear_duration'])!,
      c_chunks: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}c_chunks']),
      c_extra_chunks: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}c_extra_chunks']),
      c_capitalized_words: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}c_capitalized_words']),
      t_value: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}t_value']),
      t_audio: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}t_audio']),
      t_duration: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}t_duration'])!,
      t_linear_audio: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}t_linear_audio']),
      t_linear_duration: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}t_linear_duration'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || course != null) {
      map['course'] = Variable<String?>(course);
    }
    if (!nullToAbsent || exercise_id != null) {
      map['exercise_id'] = Variable<String?>(exercise_id);
    }
    if (!nullToAbsent || order != null) {
      map['order_'] = Variable<int?>(order);
    }
    if (!nullToAbsent || c_value != null) {
      map['c_value'] = Variable<String?>(c_value);
    }
    if (!nullToAbsent || c_audio != null) {
      map['c_audio'] = Variable<String?>(c_audio);
    }
    map['c_duration'] = Variable<int>(c_duration);
    if (!nullToAbsent || c_linear_audio != null) {
      map['c_linear_audio'] = Variable<String?>(c_linear_audio);
    }
    map['c_linear_duration'] = Variable<int>(c_linear_duration);
    if (!nullToAbsent || c_chunks != null) {
      map['c_chunks'] = Variable<String?>(c_chunks);
    }
    if (!nullToAbsent || c_extra_chunks != null) {
      map['c_extra_chunks'] = Variable<String?>(c_extra_chunks);
    }
    if (!nullToAbsent || c_capitalized_words != null) {
      map['c_capitalized_words'] = Variable<String?>(c_capitalized_words);
    }
    if (!nullToAbsent || t_value != null) {
      map['t_value'] = Variable<String?>(t_value);
    }
    if (!nullToAbsent || t_audio != null) {
      map['t_audio'] = Variable<String?>(t_audio);
    }
    map['t_duration'] = Variable<int>(t_duration);
    if (!nullToAbsent || t_linear_audio != null) {
      map['t_linear_audio'] = Variable<String?>(t_linear_audio);
    }
    map['t_linear_duration'] = Variable<int>(t_linear_duration);
    return map;
  }

  ExerciseContentsCompanion toCompanion(bool nullToAbsent) {
    return ExerciseContentsCompanion(
      id: Value(id),
      course:
          course == null && nullToAbsent ? const Value.absent() : Value(course),
      exercise_id: exercise_id == null && nullToAbsent
          ? const Value.absent()
          : Value(exercise_id),
      order:
          order == null && nullToAbsent ? const Value.absent() : Value(order),
      c_value: c_value == null && nullToAbsent
          ? const Value.absent()
          : Value(c_value),
      c_audio: c_audio == null && nullToAbsent
          ? const Value.absent()
          : Value(c_audio),
      c_duration: Value(c_duration),
      c_linear_audio: c_linear_audio == null && nullToAbsent
          ? const Value.absent()
          : Value(c_linear_audio),
      c_linear_duration: Value(c_linear_duration),
      c_chunks: c_chunks == null && nullToAbsent
          ? const Value.absent()
          : Value(c_chunks),
      c_extra_chunks: c_extra_chunks == null && nullToAbsent
          ? const Value.absent()
          : Value(c_extra_chunks),
      c_capitalized_words: c_capitalized_words == null && nullToAbsent
          ? const Value.absent()
          : Value(c_capitalized_words),
      t_value: t_value == null && nullToAbsent
          ? const Value.absent()
          : Value(t_value),
      t_audio: t_audio == null && nullToAbsent
          ? const Value.absent()
          : Value(t_audio),
      t_duration: Value(t_duration),
      t_linear_audio: t_linear_audio == null && nullToAbsent
          ? const Value.absent()
          : Value(t_linear_audio),
      t_linear_duration: Value(t_linear_duration),
    );
  }

  factory ExerciseContent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExerciseContent(
      id: serializer.fromJson<int>(json['id']),
      course: serializer.fromJson<String?>(json['course']),
      exercise_id: serializer.fromJson<String?>(json['exercise_id']),
      order: serializer.fromJson<int?>(json['order']),
      c_value: serializer.fromJson<String?>(json['c_value']),
      c_audio: serializer.fromJson<String?>(json['c_audio']),
      c_duration: serializer.fromJson<int>(json['c_duration']),
      c_linear_audio: serializer.fromJson<String?>(json['c_linear_audio']),
      c_linear_duration: serializer.fromJson<int>(json['c_linear_duration']),
      c_chunks: serializer.fromJson<String?>(json['c_chunks']),
      c_extra_chunks: serializer.fromJson<String?>(json['c_extra_chunks']),
      c_capitalized_words:
          serializer.fromJson<String?>(json['c_capitalized_words']),
      t_value: serializer.fromJson<String?>(json['t_value']),
      t_audio: serializer.fromJson<String?>(json['t_audio']),
      t_duration: serializer.fromJson<int>(json['t_duration']),
      t_linear_audio: serializer.fromJson<String?>(json['t_linear_audio']),
      t_linear_duration: serializer.fromJson<int>(json['t_linear_duration']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'course': serializer.toJson<String?>(course),
      'exercise_id': serializer.toJson<String?>(exercise_id),
      'order': serializer.toJson<int?>(order),
      'c_value': serializer.toJson<String?>(c_value),
      'c_audio': serializer.toJson<String?>(c_audio),
      'c_duration': serializer.toJson<int>(c_duration),
      'c_linear_audio': serializer.toJson<String?>(c_linear_audio),
      'c_linear_duration': serializer.toJson<int>(c_linear_duration),
      'c_chunks': serializer.toJson<String?>(c_chunks),
      'c_extra_chunks': serializer.toJson<String?>(c_extra_chunks),
      'c_capitalized_words': serializer.toJson<String?>(c_capitalized_words),
      't_value': serializer.toJson<String?>(t_value),
      't_audio': serializer.toJson<String?>(t_audio),
      't_duration': serializer.toJson<int>(t_duration),
      't_linear_audio': serializer.toJson<String?>(t_linear_audio),
      't_linear_duration': serializer.toJson<int>(t_linear_duration),
    };
  }

  ExerciseContent copyWith(
          {int? id,
          String? course,
          String? exercise_id,
          int? order,
          String? c_value,
          String? c_audio,
          int? c_duration,
          String? c_linear_audio,
          int? c_linear_duration,
          String? c_chunks,
          String? c_extra_chunks,
          String? c_capitalized_words,
          String? t_value,
          String? t_audio,
          int? t_duration,
          String? t_linear_audio,
          int? t_linear_duration}) =>
      ExerciseContent(
        id: id ?? this.id,
        course: course ?? this.course,
        exercise_id: exercise_id ?? this.exercise_id,
        order: order ?? this.order,
        c_value: c_value ?? this.c_value,
        c_audio: c_audio ?? this.c_audio,
        c_duration: c_duration ?? this.c_duration,
        c_linear_audio: c_linear_audio ?? this.c_linear_audio,
        c_linear_duration: c_linear_duration ?? this.c_linear_duration,
        c_chunks: c_chunks ?? this.c_chunks,
        c_extra_chunks: c_extra_chunks ?? this.c_extra_chunks,
        c_capitalized_words: c_capitalized_words ?? this.c_capitalized_words,
        t_value: t_value ?? this.t_value,
        t_audio: t_audio ?? this.t_audio,
        t_duration: t_duration ?? this.t_duration,
        t_linear_audio: t_linear_audio ?? this.t_linear_audio,
        t_linear_duration: t_linear_duration ?? this.t_linear_duration,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseContent(')
          ..write('id: $id, ')
          ..write('course: $course, ')
          ..write('exercise_id: $exercise_id, ')
          ..write('order: $order, ')
          ..write('c_value: $c_value, ')
          ..write('c_audio: $c_audio, ')
          ..write('c_duration: $c_duration, ')
          ..write('c_linear_audio: $c_linear_audio, ')
          ..write('c_linear_duration: $c_linear_duration, ')
          ..write('c_chunks: $c_chunks, ')
          ..write('c_extra_chunks: $c_extra_chunks, ')
          ..write('c_capitalized_words: $c_capitalized_words, ')
          ..write('t_value: $t_value, ')
          ..write('t_audio: $t_audio, ')
          ..write('t_duration: $t_duration, ')
          ..write('t_linear_audio: $t_linear_audio, ')
          ..write('t_linear_duration: $t_linear_duration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      course,
      exercise_id,
      order,
      c_value,
      c_audio,
      c_duration,
      c_linear_audio,
      c_linear_duration,
      c_chunks,
      c_extra_chunks,
      c_capitalized_words,
      t_value,
      t_audio,
      t_duration,
      t_linear_audio,
      t_linear_duration);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseContent &&
          other.id == this.id &&
          other.course == this.course &&
          other.exercise_id == this.exercise_id &&
          other.order == this.order &&
          other.c_value == this.c_value &&
          other.c_audio == this.c_audio &&
          other.c_duration == this.c_duration &&
          other.c_linear_audio == this.c_linear_audio &&
          other.c_linear_duration == this.c_linear_duration &&
          other.c_chunks == this.c_chunks &&
          other.c_extra_chunks == this.c_extra_chunks &&
          other.c_capitalized_words == this.c_capitalized_words &&
          other.t_value == this.t_value &&
          other.t_audio == this.t_audio &&
          other.t_duration == this.t_duration &&
          other.t_linear_audio == this.t_linear_audio &&
          other.t_linear_duration == this.t_linear_duration);
}

class ExerciseContentsCompanion extends UpdateCompanion<ExerciseContent> {
  final Value<int> id;
  final Value<String?> course;
  final Value<String?> exercise_id;
  final Value<int?> order;
  final Value<String?> c_value;
  final Value<String?> c_audio;
  final Value<int> c_duration;
  final Value<String?> c_linear_audio;
  final Value<int> c_linear_duration;
  final Value<String?> c_chunks;
  final Value<String?> c_extra_chunks;
  final Value<String?> c_capitalized_words;
  final Value<String?> t_value;
  final Value<String?> t_audio;
  final Value<int> t_duration;
  final Value<String?> t_linear_audio;
  final Value<int> t_linear_duration;
  const ExerciseContentsCompanion({
    this.id = const Value.absent(),
    this.course = const Value.absent(),
    this.exercise_id = const Value.absent(),
    this.order = const Value.absent(),
    this.c_value = const Value.absent(),
    this.c_audio = const Value.absent(),
    this.c_duration = const Value.absent(),
    this.c_linear_audio = const Value.absent(),
    this.c_linear_duration = const Value.absent(),
    this.c_chunks = const Value.absent(),
    this.c_extra_chunks = const Value.absent(),
    this.c_capitalized_words = const Value.absent(),
    this.t_value = const Value.absent(),
    this.t_audio = const Value.absent(),
    this.t_duration = const Value.absent(),
    this.t_linear_audio = const Value.absent(),
    this.t_linear_duration = const Value.absent(),
  });
  ExerciseContentsCompanion.insert({
    this.id = const Value.absent(),
    this.course = const Value.absent(),
    this.exercise_id = const Value.absent(),
    this.order = const Value.absent(),
    this.c_value = const Value.absent(),
    this.c_audio = const Value.absent(),
    this.c_duration = const Value.absent(),
    this.c_linear_audio = const Value.absent(),
    this.c_linear_duration = const Value.absent(),
    this.c_chunks = const Value.absent(),
    this.c_extra_chunks = const Value.absent(),
    this.c_capitalized_words = const Value.absent(),
    this.t_value = const Value.absent(),
    this.t_audio = const Value.absent(),
    this.t_duration = const Value.absent(),
    this.t_linear_audio = const Value.absent(),
    this.t_linear_duration = const Value.absent(),
  });
  static Insertable<ExerciseContent> custom({
    Expression<int>? id,
    Expression<String?>? course,
    Expression<String?>? exercise_id,
    Expression<int?>? order,
    Expression<String?>? c_value,
    Expression<String?>? c_audio,
    Expression<int>? c_duration,
    Expression<String?>? c_linear_audio,
    Expression<int>? c_linear_duration,
    Expression<String?>? c_chunks,
    Expression<String?>? c_extra_chunks,
    Expression<String?>? c_capitalized_words,
    Expression<String?>? t_value,
    Expression<String?>? t_audio,
    Expression<int>? t_duration,
    Expression<String?>? t_linear_audio,
    Expression<int>? t_linear_duration,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (course != null) 'course': course,
      if (exercise_id != null) 'exercise_id': exercise_id,
      if (order != null) 'order_': order,
      if (c_value != null) 'c_value': c_value,
      if (c_audio != null) 'c_audio': c_audio,
      if (c_duration != null) 'c_duration': c_duration,
      if (c_linear_audio != null) 'c_linear_audio': c_linear_audio,
      if (c_linear_duration != null) 'c_linear_duration': c_linear_duration,
      if (c_chunks != null) 'c_chunks': c_chunks,
      if (c_extra_chunks != null) 'c_extra_chunks': c_extra_chunks,
      if (c_capitalized_words != null)
        'c_capitalized_words': c_capitalized_words,
      if (t_value != null) 't_value': t_value,
      if (t_audio != null) 't_audio': t_audio,
      if (t_duration != null) 't_duration': t_duration,
      if (t_linear_audio != null) 't_linear_audio': t_linear_audio,
      if (t_linear_duration != null) 't_linear_duration': t_linear_duration,
    });
  }

  ExerciseContentsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? course,
      Value<String?>? exercise_id,
      Value<int?>? order,
      Value<String?>? c_value,
      Value<String?>? c_audio,
      Value<int>? c_duration,
      Value<String?>? c_linear_audio,
      Value<int>? c_linear_duration,
      Value<String?>? c_chunks,
      Value<String?>? c_extra_chunks,
      Value<String?>? c_capitalized_words,
      Value<String?>? t_value,
      Value<String?>? t_audio,
      Value<int>? t_duration,
      Value<String?>? t_linear_audio,
      Value<int>? t_linear_duration}) {
    return ExerciseContentsCompanion(
      id: id ?? this.id,
      course: course ?? this.course,
      exercise_id: exercise_id ?? this.exercise_id,
      order: order ?? this.order,
      c_value: c_value ?? this.c_value,
      c_audio: c_audio ?? this.c_audio,
      c_duration: c_duration ?? this.c_duration,
      c_linear_audio: c_linear_audio ?? this.c_linear_audio,
      c_linear_duration: c_linear_duration ?? this.c_linear_duration,
      c_chunks: c_chunks ?? this.c_chunks,
      c_extra_chunks: c_extra_chunks ?? this.c_extra_chunks,
      c_capitalized_words: c_capitalized_words ?? this.c_capitalized_words,
      t_value: t_value ?? this.t_value,
      t_audio: t_audio ?? this.t_audio,
      t_duration: t_duration ?? this.t_duration,
      t_linear_audio: t_linear_audio ?? this.t_linear_audio,
      t_linear_duration: t_linear_duration ?? this.t_linear_duration,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (course.present) {
      map['course'] = Variable<String?>(course.value);
    }
    if (exercise_id.present) {
      map['exercise_id'] = Variable<String?>(exercise_id.value);
    }
    if (order.present) {
      map['order_'] = Variable<int?>(order.value);
    }
    if (c_value.present) {
      map['c_value'] = Variable<String?>(c_value.value);
    }
    if (c_audio.present) {
      map['c_audio'] = Variable<String?>(c_audio.value);
    }
    if (c_duration.present) {
      map['c_duration'] = Variable<int>(c_duration.value);
    }
    if (c_linear_audio.present) {
      map['c_linear_audio'] = Variable<String?>(c_linear_audio.value);
    }
    if (c_linear_duration.present) {
      map['c_linear_duration'] = Variable<int>(c_linear_duration.value);
    }
    if (c_chunks.present) {
      map['c_chunks'] = Variable<String?>(c_chunks.value);
    }
    if (c_extra_chunks.present) {
      map['c_extra_chunks'] = Variable<String?>(c_extra_chunks.value);
    }
    if (c_capitalized_words.present) {
      map['c_capitalized_words'] = Variable<String?>(c_capitalized_words.value);
    }
    if (t_value.present) {
      map['t_value'] = Variable<String?>(t_value.value);
    }
    if (t_audio.present) {
      map['t_audio'] = Variable<String?>(t_audio.value);
    }
    if (t_duration.present) {
      map['t_duration'] = Variable<int>(t_duration.value);
    }
    if (t_linear_audio.present) {
      map['t_linear_audio'] = Variable<String?>(t_linear_audio.value);
    }
    if (t_linear_duration.present) {
      map['t_linear_duration'] = Variable<int>(t_linear_duration.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseContentsCompanion(')
          ..write('id: $id, ')
          ..write('course: $course, ')
          ..write('exercise_id: $exercise_id, ')
          ..write('order: $order, ')
          ..write('c_value: $c_value, ')
          ..write('c_audio: $c_audio, ')
          ..write('c_duration: $c_duration, ')
          ..write('c_linear_audio: $c_linear_audio, ')
          ..write('c_linear_duration: $c_linear_duration, ')
          ..write('c_chunks: $c_chunks, ')
          ..write('c_extra_chunks: $c_extra_chunks, ')
          ..write('c_capitalized_words: $c_capitalized_words, ')
          ..write('t_value: $t_value, ')
          ..write('t_audio: $t_audio, ')
          ..write('t_duration: $t_duration, ')
          ..write('t_linear_audio: $t_linear_audio, ')
          ..write('t_linear_duration: $t_linear_duration')
          ..write(')'))
        .toString();
  }
}

class $ExerciseContentsTable extends ExerciseContents
    with TableInfo<$ExerciseContentsTable, ExerciseContent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseContentsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _courseMeta = const VerificationMeta('course');
  @override
  late final GeneratedColumn<String?> course = GeneratedColumn<String?>(
      'course', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _exercise_idMeta =
      const VerificationMeta('exercise_id');
  @override
  late final GeneratedColumn<String?> exercise_id = GeneratedColumn<String?>(
      'exercise_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int?> order = GeneratedColumn<int?>(
      'order_', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _c_valueMeta = const VerificationMeta('c_value');
  @override
  late final GeneratedColumn<String?> c_value = GeneratedColumn<String?>(
      'c_value', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _c_audioMeta = const VerificationMeta('c_audio');
  @override
  late final GeneratedColumn<String?> c_audio = GeneratedColumn<String?>(
      'c_audio', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _c_durationMeta = const VerificationMeta('c_duration');
  @override
  late final GeneratedColumn<int?> c_duration = GeneratedColumn<int?>(
      'c_duration', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _c_linear_audioMeta =
      const VerificationMeta('c_linear_audio');
  @override
  late final GeneratedColumn<String?> c_linear_audio = GeneratedColumn<String?>(
      'c_linear_audio', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _c_linear_durationMeta =
      const VerificationMeta('c_linear_duration');
  @override
  late final GeneratedColumn<int?> c_linear_duration = GeneratedColumn<int?>(
      'c_linear_duration', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _c_chunksMeta = const VerificationMeta('c_chunks');
  @override
  late final GeneratedColumn<String?> c_chunks = GeneratedColumn<String?>(
      'c_chunks', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _c_extra_chunksMeta =
      const VerificationMeta('c_extra_chunks');
  @override
  late final GeneratedColumn<String?> c_extra_chunks = GeneratedColumn<String?>(
      'c_extra_chunks', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _c_capitalized_wordsMeta =
      const VerificationMeta('c_capitalized_words');
  @override
  late final GeneratedColumn<String?> c_capitalized_words =
      GeneratedColumn<String?>('c_capitalized_words', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _t_valueMeta = const VerificationMeta('t_value');
  @override
  late final GeneratedColumn<String?> t_value = GeneratedColumn<String?>(
      't_value', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _t_audioMeta = const VerificationMeta('t_audio');
  @override
  late final GeneratedColumn<String?> t_audio = GeneratedColumn<String?>(
      't_audio', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _t_durationMeta = const VerificationMeta('t_duration');
  @override
  late final GeneratedColumn<int?> t_duration = GeneratedColumn<int?>(
      't_duration', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _t_linear_audioMeta =
      const VerificationMeta('t_linear_audio');
  @override
  late final GeneratedColumn<String?> t_linear_audio = GeneratedColumn<String?>(
      't_linear_audio', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _t_linear_durationMeta =
      const VerificationMeta('t_linear_duration');
  @override
  late final GeneratedColumn<int?> t_linear_duration = GeneratedColumn<int?>(
      't_linear_duration', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        course,
        exercise_id,
        order,
        c_value,
        c_audio,
        c_duration,
        c_linear_audio,
        c_linear_duration,
        c_chunks,
        c_extra_chunks,
        c_capitalized_words,
        t_value,
        t_audio,
        t_duration,
        t_linear_audio,
        t_linear_duration
      ];
  @override
  String get aliasedName => _alias ?? 'exercise_contents';
  @override
  String get actualTableName => 'exercise_contents';
  @override
  VerificationContext validateIntegrity(Insertable<ExerciseContent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('course')) {
      context.handle(_courseMeta,
          course.isAcceptableOrUnknown(data['course']!, _courseMeta));
    }
    if (data.containsKey('exercise_id')) {
      context.handle(
          _exercise_idMeta,
          exercise_id.isAcceptableOrUnknown(
              data['exercise_id']!, _exercise_idMeta));
    }
    if (data.containsKey('order_')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order_']!, _orderMeta));
    }
    if (data.containsKey('c_value')) {
      context.handle(_c_valueMeta,
          c_value.isAcceptableOrUnknown(data['c_value']!, _c_valueMeta));
    }
    if (data.containsKey('c_audio')) {
      context.handle(_c_audioMeta,
          c_audio.isAcceptableOrUnknown(data['c_audio']!, _c_audioMeta));
    }
    if (data.containsKey('c_duration')) {
      context.handle(
          _c_durationMeta,
          c_duration.isAcceptableOrUnknown(
              data['c_duration']!, _c_durationMeta));
    }
    if (data.containsKey('c_linear_audio')) {
      context.handle(
          _c_linear_audioMeta,
          c_linear_audio.isAcceptableOrUnknown(
              data['c_linear_audio']!, _c_linear_audioMeta));
    }
    if (data.containsKey('c_linear_duration')) {
      context.handle(
          _c_linear_durationMeta,
          c_linear_duration.isAcceptableOrUnknown(
              data['c_linear_duration']!, _c_linear_durationMeta));
    }
    if (data.containsKey('c_chunks')) {
      context.handle(_c_chunksMeta,
          c_chunks.isAcceptableOrUnknown(data['c_chunks']!, _c_chunksMeta));
    }
    if (data.containsKey('c_extra_chunks')) {
      context.handle(
          _c_extra_chunksMeta,
          c_extra_chunks.isAcceptableOrUnknown(
              data['c_extra_chunks']!, _c_extra_chunksMeta));
    }
    if (data.containsKey('c_capitalized_words')) {
      context.handle(
          _c_capitalized_wordsMeta,
          c_capitalized_words.isAcceptableOrUnknown(
              data['c_capitalized_words']!, _c_capitalized_wordsMeta));
    }
    if (data.containsKey('t_value')) {
      context.handle(_t_valueMeta,
          t_value.isAcceptableOrUnknown(data['t_value']!, _t_valueMeta));
    }
    if (data.containsKey('t_audio')) {
      context.handle(_t_audioMeta,
          t_audio.isAcceptableOrUnknown(data['t_audio']!, _t_audioMeta));
    }
    if (data.containsKey('t_duration')) {
      context.handle(
          _t_durationMeta,
          t_duration.isAcceptableOrUnknown(
              data['t_duration']!, _t_durationMeta));
    }
    if (data.containsKey('t_linear_audio')) {
      context.handle(
          _t_linear_audioMeta,
          t_linear_audio.isAcceptableOrUnknown(
              data['t_linear_audio']!, _t_linear_audioMeta));
    }
    if (data.containsKey('t_linear_duration')) {
      context.handle(
          _t_linear_durationMeta,
          t_linear_duration.isAcceptableOrUnknown(
              data['t_linear_duration']!, _t_linear_durationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseContent map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ExerciseContent.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExerciseContentsTable createAlias(String alias) {
    return $ExerciseContentsTable(attachedDatabase, alias);
  }
}

class Translation extends DataClass implements Insertable<Translation> {
  final int id;
  final String language;
  final String translation;
  Translation(
      {required this.id, required this.language, required this.translation});
  factory Translation.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Translation(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      language: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}language'])!,
      translation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}translation'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['language'] = Variable<String>(language);
    map['translation'] = Variable<String>(translation);
    return map;
  }

  TranslationsCompanion toCompanion(bool nullToAbsent) {
    return TranslationsCompanion(
      id: Value(id),
      language: Value(language),
      translation: Value(translation),
    );
  }

  factory Translation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Translation(
      id: serializer.fromJson<int>(json['id']),
      language: serializer.fromJson<String>(json['language']),
      translation: serializer.fromJson<String>(json['translation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'language': serializer.toJson<String>(language),
      'translation': serializer.toJson<String>(translation),
    };
  }

  Translation copyWith({int? id, String? language, String? translation}) =>
      Translation(
        id: id ?? this.id,
        language: language ?? this.language,
        translation: translation ?? this.translation,
      );
  @override
  String toString() {
    return (StringBuffer('Translation(')
          ..write('id: $id, ')
          ..write('language: $language, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, language, translation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Translation &&
          other.id == this.id &&
          other.language == this.language &&
          other.translation == this.translation);
}

class TranslationsCompanion extends UpdateCompanion<Translation> {
  final Value<int> id;
  final Value<String> language;
  final Value<String> translation;
  const TranslationsCompanion({
    this.id = const Value.absent(),
    this.language = const Value.absent(),
    this.translation = const Value.absent(),
  });
  TranslationsCompanion.insert({
    this.id = const Value.absent(),
    required String language,
    required String translation,
  })  : language = Value(language),
        translation = Value(translation);
  static Insertable<Translation> custom({
    Expression<int>? id,
    Expression<String>? language,
    Expression<String>? translation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (language != null) 'language': language,
      if (translation != null) 'translation': translation,
    });
  }

  TranslationsCompanion copyWith(
      {Value<int>? id, Value<String>? language, Value<String>? translation}) {
    return TranslationsCompanion(
      id: id ?? this.id,
      language: language ?? this.language,
      translation: translation ?? this.translation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (translation.present) {
      map['translation'] = Variable<String>(translation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TranslationsCompanion(')
          ..write('id: $id, ')
          ..write('language: $language, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }
}

class $TranslationsTable extends Translations
    with TableInfo<$TranslationsTable, Translation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TranslationsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _languageMeta = const VerificationMeta('language');
  @override
  late final GeneratedColumn<String?> language = GeneratedColumn<String?>(
      'language', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _translationMeta =
      const VerificationMeta('translation');
  @override
  late final GeneratedColumn<String?> translation = GeneratedColumn<String?>(
      'translation', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, language, translation];
  @override
  String get aliasedName => _alias ?? 'translations';
  @override
  String get actualTableName => 'translations';
  @override
  VerificationContext validateIntegrity(Insertable<Translation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('translation')) {
      context.handle(
          _translationMeta,
          translation.isAcceptableOrUnknown(
              data['translation']!, _translationMeta));
    } else if (isInserting) {
      context.missing(_translationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Translation map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Translation.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TranslationsTable createAlias(String alias) {
    return $TranslationsTable(attachedDatabase, alias);
  }
}

abstract class _$MoorDB extends GeneratedDatabase {
  _$MoorDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $LanguagesTable languages = $LanguagesTable(this);
  late final $MyCoursesTable myCourses = $MyCoursesTable(this);
  late final $CoursesTable courses = $CoursesTable(this);
  late final $TopicsTable topics = $TopicsTable(this);
  late final $LessonsTable lessons = $LessonsTable(this);
  late final $ExercisesTable exercises = $ExercisesTable(this);
  late final $ExerciseContentsTable exerciseContents =
      $ExerciseContentsTable(this);
  late final $TranslationsTable translations = $TranslationsTable(this);
  late final LanguagesDao languagesDao = LanguagesDao(this as MoorDB);
  late final MyCoursesDao myCoursesDao = MyCoursesDao(this as MoorDB);
  late final CoursesDao coursesDao = CoursesDao(this as MoorDB);
  late final TopicsDao topicsDao = TopicsDao(this as MoorDB);
  late final LessonsDao lessonsDao = LessonsDao(this as MoorDB);
  late final ExercisesDao exercisesDao = ExercisesDao(this as MoorDB);
  late final ExerciseContentsDao exerciseContentsDao =
      ExerciseContentsDao(this as MoorDB);
  late final TranslationsDao translationsDao = TranslationsDao(this as MoorDB);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        languages,
        myCourses,
        courses,
        topics,
        lessons,
        exercises,
        exerciseContents,
        translations
      ];
}
