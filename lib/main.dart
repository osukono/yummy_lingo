import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/application/library/library_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/config.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/presentation/core/app_widget.dart';

const int PLAYER_VERSION = 2;
const int PARTS_PER_LESSON = 3;
bool SIGN_IN_WITH_APPLE_AVAILABLE = false;

late ApplicationBloc application;

/// Stack
/// - LinearPercentIndicator
/// - Cache course images
/// - Grammar point design
/// - Scroll library to the top on add course event
///
/// Bug
/// - A splash screen was provided to Flutter, but this is deprecated.
///   See https://flutter.dev/go/android-splash-migration
///   for migration steps.
///   https://pub.dev/packages/flutter_native_splash#i-got-the-error-a-splash-screen-was-provided-to-flutter-but-this-is-deprecated
///
/// Future
/// - Replace login page, empty library and dialog images
/// - Complete Upper-Intermediate
/// - Resume on AudioInterruptionEvent false pause. Check if player wasn't paused manually
/// - Upgrade anonymous to an existing user exception

//flutter pub run fast_i18n
//flutter pub run build_runner watch --delete-conflicting-outputs

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  configureDependencies(Environment.prod);

  await Firebase.initializeApp();
  await Config().setup();
  await initializeCrashlytics();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
  ));

  if (Platform.isIOS)
    SIGN_IN_WITH_APPLE_AVAILABLE = await SignInWithApple.isAvailable();

  LicenseRegistry.addLicense(() async* {
    yield LicenseEntryWithLineBreaks(['PT Sans'],
        await rootBundle.loadString('assets/fonts/pt_sans/OFL.txt'));
  });

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ApplicationBloc>(
        create: (_) => application = ApplicationBloc()
          ..add(const ApplicationEvent.started()),
      ),
      BlocProvider<LibraryBloc>(create: (_) => LibraryBloc()),
      BlocProvider<PlayerBloc>(
          create: (_) => PlayerBloc(application: application)),
    ],
    child: TranslationProvider(child: AppWidget()),
  ));
}

Future<void> initializeCrashlytics() async {
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kReleaseMode);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}

/**
 * 0L 1L 2L 3L 4L
 * 1A 2A 3A 4A 5L
 * 2L 3L 4L 5A 6L
 * 3A 4A 5L 6A 7L
 * 4T 5A 6L 7A 8L
 * 5T 6A 7L 8A 9L
 * 6T 7A 8L 9A 0A
 * 7T 8A 9L 0L 1L
 * 8T 9A 0A 1A 2A
 * 9T 0T 1T 2T 3T
 */

/**
 * 0L 1L 2L 3L
 * 1A 2A 3A 4L
 * 2L 3L 4A 5L
 * 3P 4L 5A 0A
 * 4P 5L 0A 1L
 */
