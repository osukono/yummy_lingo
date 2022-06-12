import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:yummy_lingo/application/settings/select_language/select_language_bloc.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/languages_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/widgets/app_bar_separator.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/language_icon.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';

class SelectLanguagePage extends StatelessWidget {
  final LanguageCategory category;
  final String language;
  final Function(Language) onLanguageSelected;

  const SelectLanguagePage({
    Key? key,
    required this.category,
    required this.language,
    required this.onLanguageSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectLanguageBloc>(
      create: (context) =>
          SelectLanguageBloc()..add(const SelectLanguageEvent.loadData()),
      child: BlocBuilder<SelectLanguageBloc, SelectLanguageState>(
          builder: (context, state) {
        return state.map(
          (Data state) => _buildBody(state),
          loading: (_) {
            return const LoadingIndicator();
          },
          error: (_) {
            return const LoadingIndicator();
          },
        );
      }),
    );
  }

  Widget _buildBody(Data state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category == LanguageCategory.language
              ? t.settings.course_language
              : t.settings.course_translation,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: AppBarSeparator(),
      ),
      body: Container(
        color: Palette.white,
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const BoxDivider(base: Constants.base2),
              Flexible(child: _buildList(state)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildList(Data state) {
    return category == LanguageCategory.language
        ? StreamProvider<List<Language>>.value(
            value: getIt<MoorDB>().languagesDao.watchCourseLanguages(),
            initialData: const [],
            child: CourseLanguagesList(
              selected: state.language,
              onLanguageSelected: onLanguageSelected,
            ),
          )
        : StreamProvider<List<LanguageWithTranslation>>.value(
            value: getIt<MoorDB>()
                .languagesDao
                .watchLanguagesWithTranslation(language),
            initialData: const [],
            child: TranslationLanguagesList(
              selected: state.translation,
              onLanguageSelected: onLanguageSelected,
            ),
          );
  }

  Future<void> blocListener(
      BuildContext context, SelectLanguageState state) async {}
}

class CourseLanguagesList extends StatelessWidget {
  final String selected;
  final Function(Language) onLanguageSelected;

  CourseLanguagesList({
    Key? key,
    required this.selected,
    required this.onLanguageSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Language> data = Provider.of<List<Language>>(context);

    if (data.isEmpty) {
      return Center(child: Text(t.common.no_data));
    }

    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(left: Constants.base, right: Constants.base),
        // child: Divider(
        //   color: Palette.grey,
        // ),
      ),
      itemCount: data.length,
      itemBuilder: (BuildContext c, int i) {
        final Language model = data[i];
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: Constants.base),
          onTap: () async {
            onLanguageSelected.call(model);
            AutoRouter.of(context).pop();
          },
          title: Text(
            model.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          leading: Container(
            width: Constants.base3,
            height: Constants.base3,
            alignment: Alignment.center,
            child: LanguageIcon(
              size: Constants.mediumIcon,
              url: model.icon,
            ),
          ),
          trailing: Visibility(
            visible: selected == model.id,
            child: const Icon(
              Icons.check,
              color: Palette.primary,
            ),
          ),
        );
      },
    );
  }
}

class TranslationLanguagesList extends StatelessWidget {
  final String selected;
  final Function(Language) onLanguageSelected;

  TranslationLanguagesList({
    Key? key,
    required this.selected,
    required this.onLanguageSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<LanguageWithTranslation> data =
        Provider.of<List<LanguageWithTranslation>>(context);

    if (data.isEmpty) {
      return Center(child: Text(t.common.no_data));
    }

    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(left: Constants.base, right: Constants.base),
        // child: Divider(
        //   color: Palette.grey,
        // ),
      ),
      itemCount: data.length,
      itemBuilder: (BuildContext c, int i) {
        final LanguageWithTranslation model = data[i];
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: Constants.base),
          onTap: () async {
            onLanguageSelected.call(model.language);
            AutoRouter.of(context).pop();
          },
          title: Text(
            model.language.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          leading: Container(
            width: Constants.base3,
            height: Constants.base3,
            alignment: Alignment.center,
            child: LanguageIcon(
              size: Constants.mediumIcon,
              url: model.language.icon,
            ),
          ),
          trailing: Visibility(
            visible: selected == model.language.id,
            child: const Icon(
              Icons.check,
              color: Palette.primary,
            ),
          ),
        );
      },
    );
  }
}
