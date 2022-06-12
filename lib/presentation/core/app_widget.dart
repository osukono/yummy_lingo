import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:just_audio/just_audio.dart';
import 'package:yummy_lingo/application/auth/auth_bloc.dart';
import 'package:yummy_lingo/application/auth/sign_in/sign_in_bloc.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/firebase/my_courses_repository.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late ApplicationBloc applicationBloc;
  late PlayerBloc playerBloc;
  late AudioPlayer audioPlayer;
  late AudioSession audioSession;

  late StreamSubscription playerStateSubscription;
  late StreamSubscription audioSessionSubscription;

  late StreamSubscription<dynamic> purchaseSubscription;

  final _router = AppRouter();
  final _db = getIt<MoorDB>();

  @override
  void initState() {
    applicationBloc = BlocProvider.of<ApplicationBloc>(context);
    playerBloc = BlocProvider.of<PlayerBloc>(context);
    audioPlayer = getIt<AudioPlayer>();

    final Stream purchaseUpdates = InAppPurchase.instance.purchaseStream;
    purchaseSubscription = purchaseUpdates.listen((purchases) {
      onPurchaseUpdated(purchases);
    });

    super.initState();

    initAudioPlayer();
    initAudioSession();

    restorePurchases();
  }

  @override
  void dispose() {
    audioPlayer.stop();
    purchaseSubscription.cancel();
    playerStateSubscription.cancel();
    audioSessionSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (_) => getIt<SignInBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Yummy Lingo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'PT Sans',
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light().copyWith(
            primary: Palette.primary,
            onPrimary: Palette.white,
            secondary: Palette.accent,
            brightness: Brightness.light,
          ),
          scaffoldBackgroundColor: Palette.scaffold,
          splashColor: Palette.primary,
          primaryColorLight: Palette.primaryLight,
          primaryColorDark: Palette.primaryDark,
          appBarTheme: const AppBarTheme(
            elevation: Constants.elevation,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            iconTheme: IconThemeData(color: Palette.primary),
            backgroundColor: Palette.scaffold,
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Colors.black54,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto Condensed',
            ),
            headline2: TextStyle(
              color: Colors.black54,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto Condensed',
            ),
            headline3: TextStyle(
              color: Palette.textMain,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              fontFamily: 'Roboto Slab',
            ),
            headline4: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.5,
              fontFamily: 'Roboto Slab',
            ),
            headline5: TextStyle(
              // color: Colors.black87,
              fontSize: 14.5,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
              fontFamily: 'Roboto Slab',
            ),
            bodyText1: TextStyle(
              color: Palette.textMain,
              fontSize: 14.5,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.3,
            ),
            bodyText2: TextStyle(
              color: Palette.textMain,
              fontSize: 12.5,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.4,
            ),
          ),
          dialogTheme: const DialogTheme(elevation: 8),
        ),
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: LocaleSettings.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        // localeResolutionCallback: (locale, supportedLocales) {
        //   for (var supportedLocale in supportedLocales) {
        //     if (supportedLocale.languageCode == locale?.languageCode) {
        //       return supportedLocale;
        //     }
        //   }
        //   return supportedLocales.first;
        // },
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
      ),
    );
  }

  void initAudioPlayer() {
    playerStateSubscription = audioPlayer.playerStateStream.listen((event) {
      if (event.processingState == ProcessingState.completed) {
        //ToDo: The audio can be from previous session
        if (playerBloc.state is PlayerData) {
          playerBloc.add(
            PlayerEvent.audioCompleted(
              session_id: (playerBloc.state as PlayerData).session_id,
            ),
          );
        }
      }
    });
  }

  Future<void> initAudioSession() async {
    audioSession = await AudioSession.instance;
    await audioSession.configure(const AudioSessionConfiguration.music());

    audioSessionSubscription = audioSession.interruptionEventStream
        .listen((AudioInterruptionEvent event) {
      debugPrint('AudioInterruptionEvent ${event.begin} ${event.type}');

      if (event.begin) {
        switch (event.type) {
          case AudioInterruptionType.duck:
            playerBloc.add(const PlayerEvent.duck());
            break;
          case AudioInterruptionType.pause:
            playerBloc.add(const PlayerEvent.pause());
            break;
          case AudioInterruptionType.unknown:
            break;
        }
      } else {
        switch (event.type) {
          case AudioInterruptionType.duck:
            playerBloc.add(const PlayerEvent.unduck());
            break;
          case AudioInterruptionType.pause:
            // playerBloc.add(const PlayerEvent.resume());
            break;
          case AudioInterruptionType.unknown:
            // The interruption ended but we should not resume.
            break;
        }
      }
    });
  }

  void onPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    // ignore: avoid_function_literals_in_foreach_calls
    purchaseDetailsList.forEach((PurchaseDetails purchaseDetails) async {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        //showPendingUI();
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          //handleError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
        } else if (purchaseDetails.status == PurchaseStatus.purchased) {
          await completePurchase(
              purchaseID: purchaseDetails.purchaseID!,
              productID: purchaseDetails.productID);

          applicationBloc
              .add(const ApplicationEvent.showBuySuccessDialog(result: true));
        } else if (purchaseDetails.status == PurchaseStatus.restored) {
          debugPrint('Purchase restored: ${purchaseDetails.toString()}');
          // await completePurchase(
          //     purchaseID: purchaseDetails.purchaseID!,
          //     productID: purchaseDetails.productID);
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await InAppPurchase.instance.completePurchase(purchaseDetails);
        }
      }
    });
  }

  Future<void> restorePurchases() async {
    if (await InAppPurchase.instance.isAvailable()) {
      InAppPurchase.instance.restorePurchases();
    }
  }

  Future<void> completePurchase({
    required String purchaseID,
    required String productID,
  }) async {
    final Course course = await _db.coursesDao.getByProductId(productID);
    final MyCourse myCourse = await _db.myCoursesDao.getByCourse(course.id);

    if (!myCourse.bought) {
      if (myCourse.firebase_id != null) {
        MyCoursesRepository.get.update(
          firebaseId: myCourse.firebase_id!,
          bought: true,
          purchase_id: purchaseID,
        );
      }
      await _db.myCoursesDao.updateBought(
        id: course.id,
        purchaseID: purchaseID,
        firebaseId: myCourse.firebase_id!,
      );
    }
  }
}
