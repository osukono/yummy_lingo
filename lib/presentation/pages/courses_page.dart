import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:yummy_lingo/application/courses/courses_bloc.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/courses_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';
import 'package:yummy_lingo/presentation/widgets/app_bar_separator.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/course_card.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);

    return BlocProvider<CoursesBloc>(
      create: (context) => CoursesBloc()..add(const CoursesEvent.loadData()),
      child: BlocBuilder<CoursesBloc, CoursesState>(
        builder: (context, state) {
          return state.map(
            (Data state) => buildBody(context, state),
            loading: (_) {
              return const LoadingIndicator();
            },
          );
        },
      ),
    );
  }

  Widget buildBody(BuildContext context, Data state) {
    return Scaffold(
      appBar: AppBar(
        elevation: state.tutorial ? 0 : Constants.elevation,
        backgroundColor: Palette.scaffold,
        iconTheme: const IconThemeData(color: Palette.primary),
        actions: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () async => selectLanguagesPressed(context),
            child: Padding(
              padding: const EdgeInsets.all(Constants.baseH),
              child: Row(
                children: <Widget>[
                  Text(
                    state.language.name.toUpperCase(),
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Palette.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Palette.primary,
                  )
                ],
              ),
            ),
          ),
        ],
        bottom: AppBarSeparator(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: state.tutorial,
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  elevation: Constants.elevation,
                  color: const Color(0xffd36b40),
                  child: Padding(
                    padding: const EdgeInsets.all(Constants.base),
                    child: Text(
                      t.tutorial.courses,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Palette.textWhite,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: StreamProvider<List<CourseEntry>>.value(
                value: getIt<MoorDB>()
                    .coursesDao
                    .watchEntries(state.language.id, state.translation.id),
                initialData: const [],
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: _DataList(
                    // pageContext: context,
                    language: state.language,
                    translation: state.translation,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> selectLanguagesPressed(BuildContext context) async {
    AutoRouter.of(context).push(SettingsPageRoute(onLanguageSelected: () {
      BlocProvider.of<CoursesBloc>(context).add(const CoursesEvent.loadData());
    }));
  }
}

class _DataList extends StatelessWidget {
  final Language language;
  final Language translation;

  const _DataList({
    Key? key,
    required this.language,
    required this.translation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CourseEntry> data = Provider.of<List<CourseEntry>>(context);

    if (data.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
              Constants.base, Constants.base, Constants.base, Constants.base5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: ScreenSize.width / 2,
                child: SvgPicture.asset(AppIcons.empty_library,
                    fit: BoxFit.fitWidth),
              ),
              const BoxDivider(base: Constants.base2),
              Container(
                width: ScreenSize.width * 3 / 4,
                child: Text(
                  t.courses.no_courses_heading,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              const BoxDivider(base: Constants.base),
              Container(
                width: ScreenSize.width * 3 / 4,
                child: Text(
                  t.courses.no_courses_text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const BoxDivider(base: Constants.base6),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int i) {
        final CourseEntry courseEntry = data[i];
        return Padding(
            padding: EdgeInsets.only(
              top: (i == 0) ? Constants.baseH : 0,
              bottom: (i == data.length - 1) ? Constants.baseH : 0,
            ),
            child: InkWell(
              onTap: () async {
                AutoRouter.of(context).push(CourseDetailsPageRoute(
                  courseEntry: courseEntry,
                ));
              },
              child: CourseCard(
                image: courseEntry.course.image!,
                title: courseEntry.course.title,
                description: courseEntry.course.description,
                topic: t['topic.${courseEntry.topic.type}'],
                level: courseEntry.course.level!,
                languageIcon: courseEntry.language.icon,
                translationIcon: courseEntry.translation.icon,
              ),
            ));
      },
    );
  }
}
