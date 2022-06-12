import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/application/player/puzzle/chunks.dart';
import 'package:yummy_lingo/extensions.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/audio.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/exercises_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/main.dart';

List<ExerciseContent> getExerciseContents(List<ExerciseWithContent> list) {
  final List<ExerciseContent> result = [];

  for (var exercise in list) {
    result.addAll(exercise.content);
  }

  return result;
}

List<Command> buildCommands({
  required String? description,
  required List<ExerciseWithContent> review,
  required List<ExerciseWithContent> exercises,
  required AudioSettings audioSettings,
}) {
  final List<Command> commands = [];

  if (description != null) {
    commands.add(Command.text(text: description));
  }

  _dialog(
    t.tutorial.listening,
    [
      // const DialogOption.start(),
    ],
    commands,
    true,
  );

  // if (review.isNotEmpty) {
  //   _review(review, commands, audioSettings);
  //   commands.add(const Command.reviewCompleted());
  // }

  if (review.isNotEmpty || exercises.isNotEmpty) {
    _lesson(review + exercises, commands, audioSettings);
  }

  commands.add(const Command.pause(duration: 1000));
  _dialog(
    t.tutorial.lesson_completed,
    [
      // const DialogOption.forward(),
      // const DialogOption.close(),
    ],
    commands,
    false,
  );

  commands.add(const Command.lessonCompleted());

  return commands;
}

// ignore: unused_element
void _review(
  List<ExerciseWithContent> exercises,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  final List<int> counters = List<int>.generate(exercises.length, (index) => 1);
  for (int x = 0; x < exercises.length; x++) {
    _reviewExercise(exercises[x], commands, audioSettings, x, counters);

    final List<int> indexes = [
      (x + 1) % exercises.length,
      (x + 2) % exercises.length,
    ];
    indexes.shuffle();
    for (int index in indexes) {
      _reviewExercise(
          exercises[index], commands, audioSettings, index, counters);
    }

    _reviewExercise(exercises[(x + 3) % exercises.length], commands,
        audioSettings, (x + 3) % exercises.length, counters);
  }
}

void _reviewExercise(
  ExerciseWithContent exercise,
  List<Command> commands,
  AudioSettings audioSettings,
  int index,
  List<int> counters,
) {
  switch (counters[index]++) {
    case 1:
      _listening(exercise, commands, audioSettings);
      break;
    case 2:
      _audition(exercise, commands, audioSettings);
      break;
    case 3:
      _listening(exercise, commands, audioSettings);
      break;
    case 4:
      _translation(exercise, commands, audioSettings);
      break;
  }
}

void _lesson(
  List<ExerciseWithContent> exercises,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  final List<int> counters = List<int>.generate(exercises.length, (index) => 1);
  for (int x = 0; x < exercises.length; x++) {
    _lessonExercise(exercises[x], commands, audioSettings, x, counters);

    final List<int> indexes = [
      (x + 1) % exercises.length,
      (x + 2) % exercises.length,
      (x + 3) % exercises.length,
    ];
    indexes.shuffle();
    for (int index in indexes) {
      _lessonExercise(
          exercises[index], commands, audioSettings, index, counters);
    }

    _lessonExercise(exercises[(x + 4) % exercises.length], commands,
        audioSettings, (x + 4) % exercises.length, counters);
  }
}

void _lessonExercise(
  ExerciseWithContent exercise,
  List<Command> commands,
  AudioSettings audioSettings,
  int index,
  List<int> counters,
) {
  switch (counters[index]++) {
    case 1:
      _listening(exercise, commands, audioSettings);
      break;
    case 2:
      _audition(exercise, commands, audioSettings);
      break;
    case 3:
      _listening(exercise, commands, audioSettings);
      break;
    case 4:
      _audition(exercise, commands, audioSettings);
      break;
    case 5:
      _translation(exercise, commands, audioSettings);
      break;
  }
}

//ignore: unused_element
void _pattern_1(
  List<ExerciseWithContent> exercises,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  for (int x = 0; x < exercises.length; x++) {
    _listening(exercises[x], commands, audioSettings);

    final List<ExerciseWithContent> list = [
      exercises[(x + 1) % exercises.length],
      exercises[(x + 2) % exercises.length],
    ];
    list.shuffle();
    for (var exercise in list) {
      _listening(exercise, commands, audioSettings);
    }

    _listening(exercises[(x + 3) % exercises.length], commands, audioSettings);
  }
}

//ignore: unused_element
void _pattern_2(
  List<ExerciseWithContent> exercises,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  for (int x = 0; x < exercises.length; x++) {
    _listening(exercises[x], commands, audioSettings);

    final List<ExerciseWithContent> list = [
      exercises[(x + 1) % exercises.length],
      exercises[(x + 2) % exercises.length],
      exercises[(x + 3) % exercises.length],
    ];
    list.shuffle();
    for (var exercise in list) {
      _listening(exercise, commands, audioSettings);
    }

    _listening(exercises[(x + 4) % exercises.length], commands, audioSettings);
  }
}

//ignore: unused_element
void _pattern_3(
  List<ExerciseWithContent> exercises,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  final List<double> delays =
      List.filled(exercises.length, audioSettings.practice_rate);

  for (int x = 0; x < exercises.length; x++) {
    final int ex_0 = x;
    final int ex_2 = (x + 2) % exercises.length;
    final int ex_5 = (x + 5) % exercises.length;

    _translation(exercises[ex_0], commands, audioSettings /*, delays[ex_0]*/);
    delays[ex_0] *= 0.925;

    _translation(exercises[ex_2], commands, audioSettings /*, delays[ex_2]*/);
    delays[ex_2] *= 0.925;

    _translation(exercises[ex_5], commands, audioSettings /*, delays[ex_5]*/);
    delays[ex_5] *= 0.925;
  }
}

//ignore: unused_element
void _pattern_4(
  List<ExerciseWithContent> exercises,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  for (int x = 0; x < exercises.length; x++) {
    _translation(
      exercises[x],
      commands,
      audioSettings,
      // audioSettings.practice_rate * 0.85,
    );
  }
}

void _dialog(String text, List<DialogOption> options, List<Command> commands,
    bool interaction) {
  commands.add(const Command.clear());
  commands.add(Command.dialog(
    text: text,
    options: options,
    interaction: interaction,
  ));
  // commands.add(const Command.clear());
  commands.add(const Command.pause(duration: 500));
}

void _listening(
  ExerciseWithContent exercise,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  commands.add(const Command.clear());

  for (var content in exercise.content) {
    _text(commands, content.c_value!, false);
    _audio(commands, getContentAudio(content)!, getContentDuration(content),
        audioSettings.listening_rate);

    if (content.t_value != null) {
      _text(commands, content.t_value!, true);
      _audio(commands, getTranslationAudio(content)!,
          getTranslationDuration(content), audioSettings.listening_rate);
    }
  }

  commands.add(Command.pause(duration: audioSettings.pause_after_exercise));
}

void _audition(
  ExerciseWithContent exercise,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  commands.add(const Command.clear());

  for (var content in exercise.content) {
    if (content.t_value == null) {
      _text(commands, content.c_value!, false);
      _audio(commands, getContentAudio(content)!, getContentDuration(content),
          audioSettings.listening_rate);
    } else {
      // commands.add(Command.audition(
      //     audio: getContentAudio(content)!,
      //     duration: getContentDuration(content)));
      _puzzle(
        commands,
        content.c_value!,
        content.c_chunks,
        content.c_extra_chunks,
        content.c_capitalized_words,
        getContentAudio(content)!,
        getContentDuration(content),
        audioSettings,
      );
    }
  }

  commands.add(Command.pause(duration: audioSettings.pause_after_exercise));
}

void _translation(
  ExerciseWithContent exercise,
  List<Command> commands,
  AudioSettings audioSettings,
) {
  commands.add(const Command.clear());

  for (var content in exercise.content) {
    if (content.t_value != null) {
      _text(commands, content.t_value!, true);
      _audio(commands, getTranslationAudio(content)!,
          getTranslationDuration(content), audioSettings.listening_rate);
      _puzzle(
        commands,
        content.c_value!,
        content.c_chunks,
        content.c_extra_chunks,
        content.c_capitalized_words,
        null,
        getContentDuration(content),
        audioSettings,
      );
    } else {
      _text(commands, content.c_value!, false);
    }

    _audio(commands, getContentAudio(content)!, getContentDuration(content),
        audioSettings.listening_rate);
  }

  commands.add(Command.pause(duration: audioSettings.pause_after_exercise));
}

void _text(
  List<Command> commands,
  String text,
  bool translation,
) {
  commands.add(Command.transcript(text: text, translation: translation));
}

void _audio(
  List<Command> commands,
  String audio,
  int duration,
  double rate,
) {
  commands.add(Command.audio(audio: audio, duration: duration));
  commands.add(Command.pause(duration: (duration * rate).toInt()));
}

void _puzzle(
  List<Command> commands,
  String value,
  String? chunks,
  String? extra_chunks,
  String? capitalized_words,
  String? audio,
  int duration,
  AudioSettings audioSettings,
) {
  List<Chunk> _chunks = buildChunks(value, chunks, capitalized_words);
  if (extra_chunks != null) {
    _chunks += buildExtraChunks(extra_chunks);
  }

  commands.add(Command.puzzle(chunks: _chunks, audio: audio));
  commands.add(Command.duration(
    duration: (duration * audioSettings.practice_rate).toInt(),
  ));
  if (audio != null) {
    commands.add(Command.pause(duration: audioSettings.pause_after_exercise));
  }
}

Future<List<ExerciseWithContent>> getExercises({
  required String course,
  required int lesson_order,
  int? part,
}) async {
  final MoorDB db = getIt<MoorDB>();

  final lesson = (await db.lessonsDao.getLesson(course, lesson_order))!;

  final List<ExerciseWithContent> exercises =
      await db.exercisesDao.getWithContent(lesson.id);

  if (part != null) {
    final int length = exercises.length;
    final int partLength = length ~/ PARTS_PER_LESSON;
    if (part < PARTS_PER_LESSON - 1)
      return exercises.sublist(part * partLength, (part + 1) * partLength);
    else
      return exercises.sublist(part * partLength);
  } else {
    return exercises;
  }
}

Future<List<ExerciseWithContent>> getReview({
  required String course,
  required int lesson_order,
  required int part,
  required int count,
}) async {
  return [
    if (lesson_order > 0)
      ...(await getExercises(
        course: course,
        lesson_order: lesson_order - 1,
        part: part,
      ))
          .randomElements(count)
          .toList(),
    if (lesson_order > 2)
      ...(await getExercises(
        course: course,
        lesson_order: lesson_order - 3,
        part: part,
      ))
          .randomElements(count)
          .toList(),
    if (lesson_order > 6)
      ...(await getExercises(
        course: course,
        lesson_order: lesson_order - 7,
        part: part,
      ))
          .randomElements(count)
          .toList(),
  ];
}
