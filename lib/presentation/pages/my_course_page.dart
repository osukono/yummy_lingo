import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/application/library/library_bloc.dart';
import 'package:yummy_lingo/application/my_course/my_course_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/extensions.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/my_courses_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/infrastructure/storage.dart';
import 'package:yummy_lingo/injection.dart';
import 'package:yummy_lingo/main.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/dialogs/alert_dialog.dart';
import 'package:yummy_lingo/presentation/dialogs/download_media_dialog.dart';
import 'package:yummy_lingo/presentation/dialogs/player_control.dart';
import 'package:yummy_lingo/presentation/listeners.dart';
import 'package:yummy_lingo/presentation/routes/router.gr.dart';
import 'package:yummy_lingo/presentation/widgets/app_bar_separator.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';
import 'package:yummy_lingo/presentation/widgets/detail_scaffold.dart';
import 'package:yummy_lingo/presentation/widgets/highlighted_icon.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';
import 'package:yummy_lingo/presentation/widgets/read_more.dart';
import 'package:yummy_lingo/presentation/widgets/sliver_title.dart';

class MyCoursePage extends StatefulWidget {
  final MyCourseEntry myCourseEntry;

  MyCoursePage({
    Key? key,
    required this.myCourseEntry,
  }) : super(key: key);

  @override
  _MyCoursePageState createState() => _MyCoursePageState();
}

class _MyCoursePageState extends State<MyCoursePage> {
  final ScrollController _scrollController = ScrollController();

  late MyCourseBloc myCourseBloc;
  late PlayerBloc playerBloc;
  late LibraryBloc libraryBloc;

  int currentLesson = 0;
  int currentPart = 0;
  bool bought = false;

  _MyCoursePageState();

  @override
  void initState() {
    super.initState();
    playerBloc = BlocProvider.of<PlayerBloc>(context);
    libraryBloc = BlocProvider.of<LibraryBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              myCourseBloc = MyCourseBloc(widget.myCourseEntry.course.id)
                ..add(const MyCourseEvent.started())
                ..add(const MyCourseEvent.checkDownloaded()),
        ),
      ],
      child: MultiBlocListener(
        listeners: const [
          BlocListener<MyCourseBloc, MyCourseState>(listener: myCourseListener),
        ],
        child: BlocBuilder<MyCourseBloc, MyCourseState>(
          builder: (context, state) {
            return buildBody(state);
          },
        ),
      ),
    );
  }

  Widget buildBody(MyCourseState state) {
    final double imageHeight = (ScreenSize.width) * 9 / 16;

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Palette.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: StreamBuilder(
                stream: getIt<MoorDB>()
                    .myCoursesDao
                    .watchById(widget.myCourseEntry.course.id),
                builder: (context, stream) {
                  if (!stream.hasData) {
                    return Center(child: CircularProgress.primary());
                  }

                  final MyCourse myCourse = stream.data! as MyCourse;
                  currentLesson = myCourse.current_lesson;
                  currentPart = myCourse.current_part;
                  bought = myCourse.bought;

                  return CupertinoScrollbar(
                    controller: _scrollController,
                    child: DetailScaffold(
                      controller: _scrollController,
                      hasPinnedAppBar: true,
                      expandedHeight: imageHeight,
                      slivers: <Widget>[
                        SliverAppBar(
                          elevation: Constants.elevation,
                          leading: IconButton(
                              tooltip: t.navigation.back,
                              icon: HighlightedIcon(
                                icon: Icon(Platform.isAndroid
                                    ? Icons.arrow_back_rounded
                                    : Icons.arrow_back_ios_rounded),
                              ),
                              onPressed: () async {
                                AutoRouter.of(context).pop();
                              }),
                          actions: _actions(),
                          iconTheme:
                              const IconThemeData(color: Palette.primary),
                          backgroundColor: Palette.white,
                          pinned: true,
                          title: SliverAppBarTitle(
                              offset: imageHeight -
                                  Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .fontSize!
                                      .toInt(),
                              child: Text(
                                widget.myCourseEntry.course.title,
                                style: Theme.of(context).textTheme.headline3,
                              )),
                          expandedHeight: imageHeight,
                          flexibleSpace: FlexibleSpaceBar(
                            background: SvgPicture.network(
                              _courseImage(state),
                              fit: BoxFit.cover,
                              height: imageHeight,
                              width: double.infinity,
                              placeholderBuilder: (context) => SizedBox(
                                  height: imageHeight,
                                  width: double.infinity,
                                  child: Center(
                                      child: CircularProgress.primary())),
                              excludeFromSemantics: true,
                            ),
                          ),
                          bottom: AppBarSeparator(),
                        ),
                        buildList(state),
                      ],
                    ),
                  );
                },
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

  String _courseImage(MyCourseState state) {
    return (state.lessons.length > currentLesson &&
            state.lessons[currentLesson].image != null)
        ? state.lessons[currentLesson].image!
        : widget.myCourseEntry.course.image!;
  }

  Widget buildHeader(MyCourseState state) {
    final double progress =
        state.lessons.isEmpty ? 0 : currentLesson / state.lessons.length;
    return Container(
      color: Palette.white,
      padding: const EdgeInsets.only(
        left: Constants.base,
        right: Constants.base,
        // top: Constants.baseQ,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.myCourseEntry.course.title,
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          const BoxDivider(base: Constants.baseQ),
          ReadMore(
            data: widget.myCourseEntry.course.description,
            colorClickableText: Palette.primary,
            trimMode: TrimMode.Line,
            trimCollapsedText: t.course.description_more,
            trimExpandedText: t.course.description_less,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const BoxDivider(base: Constants.base),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              state.updatingState == JobState.pending ||
                      state.updatingState == JobState.executing
                  ? buildUpdateButton(state.updatingState)
                  : buildContinueButton(state),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.course.progress,
                    style: Theme.of(context).textTheme.bodyText2!,
                  ),
                  LinearProgress(
                    progress: progress,
                    animation: true,
                  ),
                ],
              )
            ],
          ),
          const BoxDivider(base: Constants.base2),
          Text(
            t.course.lessons.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Palette.textSecondary),
          ),
          const BoxDivider(base: Constants.base),
        ],
      ),
    );
  }

  Widget buildContinueButton(MyCourseState state) {
    return PrimaryButton(
      text: t.course.button_continue.toUpperCase(),
      onPressed: () async {
        if (currentLesson >= widget.myCourseEntry.course.demo && !bought) {
          BlocProvider.of<ApplicationBloc>(context).add(
              ApplicationEvent.showLessonLockedDialog(
                  course: widget.myCourseEntry.course.id));
        } else if (currentLesson >= state.lessons.length) {
          BlocProvider.of<ApplicationBloc>(context).add(
              ApplicationEvent.showCourseCompletedDialog(
                  course: widget.myCourseEntry.course.id));
        } else {
          playerBloc.add(PlayerEvent.load(
            course: widget.myCourseEntry.course.id,
            firebaseId: widget.myCourseEntry.myCourse.firebase_id,
            lesson: CurrentLesson.part(
              order: currentLesson,
              part: currentPart,
            ),
          ));

          AutoRouter.of(context).push(PlayerDialogRoute());
        }
      },
    );
  }

  Widget buildUpdateButton(JobState updatingState) {
    switch (updatingState) {
      case JobState.executing:
        return Padding(
          padding: const EdgeInsets.fromLTRB(
              Constants.base5, Constants.base, Constants.base5, Constants.base),
          child: SizedBox(
              height: Constants.base2,
              width: Constants.base2,
              child: CircularProgress.primary()),
        );
      case JobState.failed:
      case JobState.pending:
        return PrimaryButton(
            text: t.course.button_update.toUpperCase(),
            onPressed: () async {
              playerBloc.add(PlayerEvent.resetIfCurrent(
                  course: widget.myCourseEntry.course.id));
              BlocProvider.of<LibraryBloc>(context).add(
                  LibraryEvent.updateCourse(
                      course: widget.myCourseEntry.course.id));
              AutoRouter.of(context).popUntilRoot();
            });
      default:
        return Container();
    }
  }

  Widget buildList(MyCourseState state) {
    late final List<Lesson> lessons;

    if (state.lessons.isEmpty) {
      lessons = state.lessons;
    } else if (currentLesson > state.lessons.length) {
      lessons = state.lessons.reversed.toList();
    } else {
      lessons = List.from(state.lessons.sublist(0, currentLesson + 1).reversed)
        ..addAll(state.lessons.sublist(currentLesson + 1));
    }

    final int count = lessons.isEmpty ? 2 : lessons.length * 2;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == 0) {
            return buildHeader(state);
          }

          if (lessons.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(Constants.base),
              child: Center(child: CircularProgress.primary()),
            );
          }

          final int lesson_order = (index - 1) ~/ 2;
          if (index.isEven) {
            return const Divider(height: 0, color: Palette.border);
          }

          final Lesson lesson = lessons[lesson_order];
          final bool futureLesson = lesson.order > currentLesson;
          double progress = 0;

          if (lesson.order < currentLesson) {
            progress = 1;
          } else if (lesson.order == currentLesson) {
            progress = currentPart / PARTS_PER_LESSON;
          }

          return ListTile(
            contentPadding: const EdgeInsets.only(
              left: Constants.base,
              right: Constants.base,
            ),
            onTap: !futureLesson
                ? () async {
                    startLesson(lesson.order, state.updatingState);
                  }
                : null,
            leading: SizedBox(
              width: Constants.d40,
              height: Constants.d40,
              child: futureLesson
                  ? Center(
                      child: Text(
                      '${lesson.order + 1}',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Palette.textSecondary,
                          ),
                    ))
                  : Container(
                      decoration: const BoxDecoration(
                        color: Palette.primary,
                        borderRadius:
                            BorderRadius.all(Radius.circular(Constants.base4)),
                      ),
                      // ignore: missing_required_param
                      child: IconButton(
                        icon: Icon(
                          (progress == 1) ? Icons.replay : Icons.play_arrow,
                          color: Palette.white,
                          semanticLabel: (progress == 1)
                              ? t.course.button_repeat
                              : t.course.button_continue,
                        ),
                        onPressed: () async {
                          startLesson(lesson.order, state.updatingState);
                        },
                      ),
                    ),
            ),
            title: Text(
              lesson.title,
              style: futureLesson
                  ? Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.black54)
                  : Theme.of(context).textTheme.headline5,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: Constants.baseQ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (lesson.description != null)
                    Text(
                      lesson.description!
                          .removeLineBreakSequence()
                          .removeHighlighting(),
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLines: 3,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: Constants.baseH),
                    child: LinearProgress(
                      progress: progress,
                      animation: true,
                    ),
                  ),
                ],
              ),
            ),
            trailing: Visibility(
              visible:
                  lesson.order >= widget.myCourseEntry.course.demo && !bought,
              child: const SizedBox(
                width: Constants.d30,
                height: Constants.d40,
                child: Center(
                  child: Icon(Icons.lock, color: Palette.icon),
                ),
              ),
            ),
          );
        },
        childCount: count,
      ),
    );
  }

  Future<void> downloadMedia() async {
    final bool? result = await showDownloadMediaDialog(
      context: context,
      course: widget.myCourseEntry.course,
    );

    if (result != null && result) {
      myCourseBloc.add(const MyCourseEvent.updateDownloaded(downloaded: true));
    }
  }

  List<Widget> _actions() {
    return [
      IconButton(
        icon: HighlightedIcon(
          icon: Icon(Platform.isAndroid ? Icons.more_vert : Icons.more_horiz),
        ),
        tooltip: t.navigation.actions,
        onPressed: () async {
          final storage = getIt<Storage>();

          final List<ExerciseContent> mediaForDownload = await storage
              .checkMediaReady(course: widget.myCourseEntry.course.id);
          final bool showDownloadMedia = mediaForDownload.isNotEmpty;

          final String path =
              await storage.getAudioPath(widget.myCourseEntry.course.id);
          final mediaDirectory = Directory(path);
          final bool showDeleteMedia = mediaDirectory.existsSync();

          final bool showBuyCourse =
              widget.myCourseEntry.course.demo != 1000 && !bought;

          final bool showResetProgress = currentLesson > 0 || currentPart > 0;

          showCupertinoModalPopup(
            context: context,
            builder: (BuildContext _context) => CupertinoActionSheet(
              actions: <Widget>[
                if (showBuyCourse)
                  CupertinoActionSheetAction(
                    child: Text(
                      t.course.unlock_lessons,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Palette.textDark,
                          ),
                    ),
                    onPressed: () async {
                      Navigator.of(_context).pop();

                      if (getIt<FirebaseAuth>().currentUser!.isAnonymous) {
                        BlocProvider.of<ApplicationBloc>(context).add(
                            const ApplicationEvent
                                .showUpgradeAnonymousUserDialog());
                      } else {
                        BlocProvider.of<ApplicationBloc>(context).add(
                            ApplicationEvent.showBuyCourseDialog(
                                course: widget.myCourseEntry.course.id));
                      }
                    },
                  ),
                if (showDownloadMedia)
                  CupertinoActionSheetAction(
                    child: Text(
                      t.course.download_media,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Palette.textDark,
                          ),
                    ),
                    onPressed: () async {
                      Navigator.of(_context).pop();

                      downloadMedia();
                    },
                  ),
                if (showDeleteMedia)
                  CupertinoActionSheetAction(
                    child: Text(
                      t.course.delete_downloaded_media,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Palette.textDark,
                          ),
                    ),
                    onPressed: () async {
                      Navigator.of(_context).pop();

                      playerBloc.add(PlayerEvent.resetIfCurrent(
                          course: widget.myCourseEntry.course.id));
                      myCourseBloc.add(const MyCourseEvent.deleteMedia());
                    },
                  ),
                if (showResetProgress)
                  CupertinoActionSheetAction(
                    child: Text(
                      t.course.reset_progress,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Palette.textDark,
                          ),
                    ),
                    onPressed: () async {
                      Navigator.of(_context).pop();

                      final bool? result = await showAlertDialog(
                        context: context,
                        header: t.dialog.confirmation,
                        okButtonText: t.dialog.button_yes,
                        cancelButtonText: t.dialog.button_no,
                      );

                      if (result != null && result) {
                        playerBloc.add(PlayerEvent.resetIfCurrent(
                            course: widget.myCourseEntry.course.id));
                        myCourseBloc.add(MyCourseEvent.resetProgress(
                            myCourse: widget.myCourseEntry.myCourse));
                      }
                    },
                  ),
                CupertinoActionSheetAction(
                  child: Text(
                    t.course.delete_from_library,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Palette.textDark,
                        ),
                  ),
                  onPressed: () async {
                    Navigator.of(_context).pop();

                    final bool? result = await showAlertDialog(
                      context: context,
                      header: t.dialog.confirmation,
                      okButtonText: t.dialog.button_yes,
                      cancelButtonText: t.dialog.button_no,
                    );

                    if (result != null && result) {
                      final String course = widget.myCourseEntry.course.id;
                      playerBloc
                          .add(PlayerEvent.resetIfCurrent(course: course));
                      libraryBloc
                          .add(LibraryEvent.removeCourse(course: course));
                      AutoRouter.of(context).popUntilRoot();
                    }
                  },
                ),
                CupertinoActionSheetAction(
                  isDefaultAction: true,
                  child: Text(
                    t.dialog.button_cancel,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Palette.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  onPressed: () async {
                    Navigator.of(_context).pop();
                  },
                ),
              ],
            ),
          );
        },
      ),
    ];
  }

  Future<void> startLesson(int order, JobState updatingState) async {
    if (updatingState != JobState.none && updatingState != JobState.completed) {
      debugPrint(
          'Cannot start lesson ${order + 1}. Updating state is $updatingState');
      return;
    } else if (order >= widget.myCourseEntry.course.demo && !bought) {
      BlocProvider.of<ApplicationBloc>(context).add(
          ApplicationEvent.showLessonLockedDialog(
              course: widget.myCourseEntry.course.id));
    } else {
      playerBloc.add(PlayerEvent.load(
          course: widget.myCourseEntry.course.id,
          firebaseId: widget.myCourseEntry.myCourse.firebase_id,
          lesson: order == currentLesson
              ? CurrentLesson.part(
                  order: currentLesson,
                  part: currentPart,
                )
              : Review(order: order)));

      AutoRouter.of(context).push(PlayerDialogRoute());
    }
  }
}
