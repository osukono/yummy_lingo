import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/auth/auth_bloc.dart';
import 'package:yummy_lingo/application/auth/sign_in/sign_in_bloc.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) async {
            debugPrint('splash page authenticated');
            AutoRouter.of(context).replace(const LibraryPageRoute());
          },
          unauthenticated: (_) async {
            debugPrint('splash page unauthenticated');
            // if (!await Preferences.get.getBool(Preferences.TUTORIAL_SHOWED)) {
            //   Preferences.get.setBool(Preferences.TUTORIAL_SHOWED, true);
            //   AutoRouter.of(context).replace(const TutorialPageRoute());
            // } else {
            BlocProvider.of<SignInBloc>(context).add(const SignInEvent.reset());
            AutoRouter.of(context).replace(SignInPageRoute());
            // }
          },
        );
      },
      child: buildBody(),
    );
  }

  Widget buildBody() {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(color: Palette.darkerAlice),
        child: buildLogo(),
      ),
    );
  }

  Widget buildLogo() {
    return Center(
      child: Image.asset(
        AppIcons.splash,
        width: ScreenSize.width * 0.785,
        fit: BoxFit.cover,
      ),
    );
  }
}
