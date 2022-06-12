import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/settings/settings_bloc.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';
import 'package:yummy_lingo/presentation/widgets/language_icon.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';

class SettingsPage extends StatelessWidget {
  final Function? onLanguageSelected;

  const SettingsPage({
    Key? key,
    this.onLanguageSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (context) => SettingsBloc()..add(const SettingsEvent.loadData()),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.map(
            (Data data) => _buildBody(context, data),
            loading: (state) {
              return const LoadingIndicator();
            },
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, Data state) {
    return Scaffold(
      appBar: !state.initial ? AppBar() : null,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(Constants.base2,
                    Constants.base2, Constants.base2, Constants.base5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        t.settings.heading,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    const BoxDivider(base: Constants.base3),
                    Text(
                      t.settings.course_language,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const BoxDivider(base: Constants.base),
                    getChooseLanguage(
                      context,
                      state,
                      category: LanguageCategory.language,
                      name: state.language.name,
                      icon: state.language.icon,
                    ),
                    const BoxDivider(base: Constants.base2),
                    Text(
                      t.settings.course_translation,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const BoxDivider(base: Constants.base),
                    getChooseLanguage(
                      context,
                      state,
                      category: LanguageCategory.translation,
                      name: state.translation.name,
                      icon: state.translation.icon,
                    ),
                    const BoxDivider(base: Constants.base5),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Constants.base,
                        right: Constants.base,
                      ),
                      child: PrimaryButton(
                          text: state.initial
                              ? t.settings.button_continue
                              : t.settings.button_save,
                          onPressed: () async {
                            if (state.initial) {
                              AutoRouter.of(context)
                                  .replace(const LibraryPageRoute());
                              AutoRouter.of(context)
                                  .push(const CoursesPageRoute());
                            } else {
                              context.router.pop();
                              AutoRouter.of(context).pop();
                            }
                          },
                          block: true),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getChooseLanguage(
    BuildContext context,
    Data state, {
    required LanguageCategory category,
    required String name,
    required String icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.white,
        border: Border.all(color: Palette.icon, width: Constants.border),
        borderRadius: const BorderRadius.all(Radius.circular(Constants.base2)),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () async {
          AutoRouter.of(context).push(SelectLanguagePageRoute(
            category: category,
            language: state.language.id,
            onLanguageSelected: (language) {
              if (category == LanguageCategory.language) {
                BlocProvider.of<SettingsBloc>(context)
                    .add(SettingsEvent.languageChanged(
                  language: language,
                ));
              } else {
                BlocProvider.of<SettingsBloc>(context)
                    .add(SettingsEvent.translationChanged(
                  translation: language,
                ));
              }
              onLanguageSelected?.call();
            },
          ));
        },
        child: ListTile(
          leading: Container(
            width: Constants.base3,
            height: Constants.base3,
            alignment: Alignment.center,
            child: LanguageIcon(
              size: Constants.mediumIcon,
              url: icon,
            ),
          ),
          title: Text(
            name,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: Constants.baseM,
            color: Palette.icon,
          ),
        ),
      ),
    );
  }
}
