import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          top: false,
          child: Container(
            decoration: const BoxDecoration(color: Palette.white),
            constraints: const BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    AppIcons.tutorial_logo,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: Constants.base2, right: Constants.base2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const BoxDivider(base: Constants.base),
                        Text(
                          t.tutorial.welcome.heading,
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: Palette.primary,
                                  ),
                        ),
                        Text(
                          'Yummy Lingo',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        const BoxDivider(base: Constants.baseH),
                        Text(
                          t.tutorial.welcome.text,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const BoxDivider(base: Constants.base2),
                        PrimaryButton(
                          text: t.tutorial.welcome.button_continue,
                          onPressed: () async => {
                            AutoRouter.of(context).replace(SignInPageRoute())
                          },
                          block: true,
                        ),
                        const BoxDivider(base: Constants.base2),
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
