import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yummy_lingo/infrastructure/audio.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';

@singleton
class Storage {
  final MoorDB _db;
  final String audioDirectory = 'audio';

  Storage(this._db);

  Future<List<ExerciseContent>> checkMediaReady({
    required String course,
    List<ExerciseContent>? exercises,
  }) async {
    if (exercises == null) {
      return await checkMediaReady(
        course: course,
        exercises: await _db.exerciseContentsDao.getByCourse(course),
      );
    }

    final String path = await getAudioPath(course);
    final List<ExerciseContent> result = [];

    for (ExerciseContent model in exercises) {
      if (getContentAudio(model) != null) {
        if (!(await fileExists(getContentAudio(model)!, path))) {
          result.add(model);
          continue;
        }
      }

      if (getTranslationAudio(model) != null) {
        if (!(await fileExists(getTranslationAudio(model)!, path))) {
          result.add(model);
          continue;
        }
      }
    }

    return result;
  }

  Future<List<String>> getLoadedAudio({
    required String course,
    List<ExerciseContent>? exercises,
  }) async {
    if (exercises == null) {
      return await getLoadedAudio(
        course: course,
        exercises: await _db.exerciseContentsDao.getByCourse(course),
      );
    }

    final String path = await getAudioPath(course);
    final List<String> audio = [];

    for (ExerciseContent content in exercises) {
      if (getContentAudio(content) != null) {
        if (await fileExists(getContentAudio(content)!, path)) {
          audio.add(getContentAudio(content)!);
        }
      }
      if (getTranslationAudio(content) != null) {
        if (await fileExists(getTranslationAudio(content)!, path)) {
          audio.add(getTranslationAudio(content)!);
        }
      }
    }

    return audio;
  }

  Future<bool> fileExists(String name, String path) async {
    return File(path + Platform.pathSeparator + name).existsSync();
  }

  Future<void> deleteFile(String path, String name) async {
    File(path + Platform.pathSeparator + name).deleteSync();
  }

  Future<String> getAudioPath(String course) async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path +
        Platform.pathSeparator +
        audioDirectory +
        Platform.pathSeparator +
        course;
  }

  Future<void> deleteCourseAudio(String course) async {
    final String path = await getAudioPath(course);
    final directory = Directory(path);
    if (directory.existsSync()) {
      directory.deleteSync(recursive: true);
    }
  }

  Future<void> deleteOutdatedAudio(String course) async {
    final String path = await getAudioPath(course);
    final directory = Directory(path);
    if (directory.existsSync()) {
      final Set<String> audio = await getCourseAudio(course);
      final List<FileSystemEntity> files = directory.listSync();

      for (FileSystemEntity file in files) {
        if (!audio.contains(file.uri.pathSegments.last)) {
          file.delete();
        }
      }
    }
  }

  Future<void> deleteLoadedAudio() async {
    final audio = Directory((await getApplicationDocumentsDirectory()).path +
        Platform.pathSeparator +
        audioDirectory);

    if (audio.existsSync()) {
      audio.deleteSync(recursive: true);
    }
  }
}
