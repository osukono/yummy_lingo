import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:yummy_lingo/application/auth/auth_bloc.dart';
import 'package:yummy_lingo/application/library/library_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/domain/core/job_progress.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/my_courses_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/dialogs/player_control.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';
import 'package:yummy_lingo/presentation/widgets/app_bar_separator.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/course_card.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          actions: _actions(context),
          title: Text(
            t.library.heading,
            style: Theme.of(context).textTheme.headline2,
          ),
          bottom: AppBarSeparator(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: StreamProvider<List<MyCourseEntry>>.value(
                value: getIt<MoorDB>().myCoursesDao.watchEntries(),
                initialData: const [],
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: Stack(
                      children: <Widget>[
                        _DataList(),
                      ],
                    )),
              ),
            ),
          ],
        ),
        bottomNavigationBar:
            BlocProvider.of<PlayerBloc>(context, listen: true).state.map(
                (value) => BottomAppBar(
                      color: Palette.white,
                      elevation: Constants.elevation,
                      child: PlayerControl(),
                    ),
                initial: (_) => null),
      ),
    );
  }

  List<Widget> _actions(BuildContext context) {
    final PlayerBloc playerBloc = BlocProvider.of<PlayerBloc>(context);
    final LibraryBloc libraryBloc = BlocProvider.of<LibraryBloc>(context);
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);

    return [
      IconButton(
        icon: const Icon(
          // Icons.dashboard_customize_rounded,
          Icons.library_add_rounded,
          color: Palette.primary,
        ),
        onPressed: () async {
          AutoRouter.of(context).push(const CoursesPageRoute());
        },
      ),
      IconButton(
        icon: Icon(
          Platform.isAndroid
              ? Icons.more_vert_outlined
              : Icons.more_horiz_outlined,
          color: Palette.primary,
        ),
        onPressed: () async {
          showCupertinoModalPopup(
            context: context,
            // barrierColor: Palette.white.withAlpha(0),
            builder: (BuildContext context) => CupertinoActionSheet(
              actions: <Widget>[
                CupertinoActionSheetAction(
                  child: Text(
                    getIt<FirebaseAuth>().currentUser != null &&
                            getIt<FirebaseAuth>().currentUser!.isAnonymous
                        ? t.library.sign_up
                        : t.library.log_out,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Palette.textDark,
                        ),
                  ),
                  onPressed: () async {
                    playerBloc.add(const PlayerEvent.stop());
                    libraryBloc.add(const LibraryEvent.clear());

                    if (getIt<FirebaseAuth>().currentUser!.isAnonymous) {
                      authBloc.add(const AuthEvent.upgradeAnonymousUser());
                    } else {
                      authBloc.add(const AuthEvent.signedOut());
                    }

                    Navigator.of(context).pop();
                  },
                ),
                CupertinoActionSheetAction(
                  child: Text(
                    t.dialog.button_cancel,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Palette.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  isDefaultAction: true,
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        },
      )
    ];
  }
}

class _DataList extends StatelessWidget {
  _DataList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MyCourseEntry> data = Provider.of<List<MyCourseEntry>>(context);

    if (data.isEmpty) {
      return _libraryIsEmpty(context);
    }

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext c, int i) {
        final MyCourseEntry myCourseEntry = data[i];
        // final int lessonsCount = myCourseEntry.course.lessons_count;

        final JobProgress? job =
            BlocProvider.of<LibraryBloc>(context, listen: true)
                .state
                .jobs[myCourseEntry.course.id];

        final double? progress =
            (job != null && job.state == JobState.executing)
                ? job.progress
                : null;
        // : myCourseEntry.myCourse.current_lesson /
        //     (lessonsCount == 0 ? 1 : lessonsCount);

        final List<Widget> actions = [
          if (job != null && job.state == JobState.executing) ...[
            Text(t.library.loading),
            const BoxDivider(base: Constants.baseH),
            LinearProgress(
              progress: progress!,
            ),
          ]
        ];

        return Padding(
          padding: EdgeInsets.only(
            top: (i == 0) ? Constants.baseH : 0,
            bottom: (i == data.length - 1) ? Constants.baseH : 0,
          ),
          child: InkWell(
            onTap: () async {
              final JobProgress? job = BlocProvider.of<LibraryBloc>(context)
                  .state
                  .jobs[myCourseEntry.course.id];
              if ((job == null || job.state == JobState.completed) &&
                  myCourseEntry.myCourse.validated) {
                AutoRouter.of(context).push(MyCoursePageRoute(
                  myCourseEntry: myCourseEntry,
                ));
              } else if ((job != null && job.state == JobState.failed) ||
                  !myCourseEntry.myCourse.validated) {
                BlocProvider.of<LibraryBloc>(context).add(
                    LibraryEvent.updateCourse(
                        course: myCourseEntry.course.id,
                        updateLastListened: false));
              }
            },
            child: CourseCard(
              image: myCourseEntry.course.image!,
              title: myCourseEntry.course.title,
              description: myCourseEntry.course.description,
              topic: t['topic.${myCourseEntry.topic.type}'],
              level: myCourseEntry.course.level!,
              actions: actions,
              languageIcon: myCourseEntry.language.icon,
              translationIcon: myCourseEntry.translation.icon,
            ),
          ),
        );
      },
    );
  }

  Widget _libraryIsEmpty(BuildContext context) {
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
              child: SvgPicture.asset(
                AppIcons.empty_library,
                fit: BoxFit.fitWidth,
              ),
            ),
            const BoxDivider(base: Constants.base2),
            Container(
                width: ScreenSize.width * 3 / 4,
                child: Text(
                  t.library.no_courses_heading,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                )),
            const BoxDivider(base: Constants.base),
            Container(
                width: ScreenSize.width * 3 / 4,
                child: Text(
                  t.library.no_courses_text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            const BoxDivider(base: Constants.base6),
          ],
        ),
      ),
    );
  }
}
