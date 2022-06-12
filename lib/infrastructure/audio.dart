import 'dart:io';

import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';

String? getContentAudio(ExerciseContent content) {
  return Platform.isAndroid || content.c_linear_audio == null
      ? content.c_audio
      : content.c_linear_audio;
}

int getContentDuration(ExerciseContent content) {
  return Platform.isAndroid || content.c_linear_duration == 0
      ? content.c_duration
      : content.c_linear_duration;
}

String? getTranslationAudio(ExerciseContent content) {
  return Platform.isAndroid || content.t_linear_audio == null
      ? content.t_audio
      : content.t_linear_audio;
}

int getTranslationDuration(ExerciseContent content) {
  return Platform.isAndroid || content.t_linear_duration == 0
      ? content.t_duration
      : content.t_linear_duration;
}

Future<Set<String>> getCourseAudio(String course) async {
  final List<ExerciseContent> exercises =
      await getIt<MoorDB>().exerciseContentsDao.getByCourse(course);

  return getExercisesAudio(exercises);
}

Future<Set<String>> getExercisesAudio(List<ExerciseContent> exercises) async {
  final Set<String> audio = {};

  for (ExerciseContent exercise in exercises) {
    final String? contentAudio = getContentAudio(exercise);
    if (contentAudio != null) {
      audio.add(contentAudio);
    }

    final String? translationAudio = getTranslationAudio(exercise);
    if (translationAudio != null) {
      audio.add(translationAudio);
    }
  }

  return audio;
}
