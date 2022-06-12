import 'dart:io';
import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_lingo/application/library/library_bloc.dart';
import 'package:yummy_lingo/extensions.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/firebase/lessons_repository.dart';
import 'package:yummy_lingo/infrastructure/moor/daos/courses_dao.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/widgets/app_bar_separator.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';
import 'package:yummy_lingo/presentation/widgets/detail_scaffold.dart';
import 'package:yummy_lingo/presentation/widgets/highlighted_icon.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';
import 'package:yummy_lingo/presentation/widgets/read_more.dart';
import 'package:yummy_lingo/presentation/widgets/sliver_title.dart';

class CourseDetailsPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();
  final CourseEntry courseEntry;

  CourseDetailsPage({
    Key? key,
    required this.courseEntry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);

    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    final double imageHeight = (ScreenSize.width) * 9 / 16;

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Palette.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: CupertinoScrollbar(
                controller: _scrollController,
                child: DetailScaffold(
                  controller: _scrollController,
                  hasPinnedAppBar: true,
                  expandedHeight: imageHeight,
                  slivers: <Widget>[
                    SliverAppBar(
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
                      iconTheme: const IconThemeData(color: Palette.primary),
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
                            courseEntry.course.title,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      expandedHeight: imageHeight,
                      flexibleSpace: FlexibleSpaceBar(
                        background: SvgPicture.network(
                          courseEntry.course.image!,
                          height: imageHeight,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          excludeFromSemantics: true,
                          placeholderBuilder: (context) => SizedBox(
                              height: imageHeight,
                              width: double.infinity,
                              child: Center(child: CircularProgress.primary())),
                        ),
                      ),
                      bottom: AppBarSeparator(),
                    ),
                    StreamBuilder(
                        stream:
                            LessonsRepository.get.stream(courseEntry.course.id),
                        builder: (context, snapshot) {
                          return _buildList(context, snapshot);
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
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
            courseEntry.course.title,
            style: Theme.of(context).textTheme.headline3,
          ),
          const BoxDivider(base: Constants.baseQ),
          ReadMore(
              data: courseEntry.course.description,
              colorClickableText: Palette.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: t.course.description_more,
              trimExpandedText: t.course.description_less,
              style: Theme.of(context).textTheme.bodyText1),
          const BoxDivider(base: Constants.baseM),
          _buildAddButton(context),
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

  Widget _buildAddButton(BuildContext context) {
    return PrimaryButton(
        text: t.courses.button_add_to_library.toUpperCase(),
        onPressed: () async {
          BlocProvider.of<LibraryBloc>(context)
              .add(LibraryEvent.addCourse(course: courseEntry.course.id));
          AutoRouter.of(context).popUntilRoot();
        });
  }

  Widget _buildList(BuildContext context, dynamic snapshot) {
    final List<Lesson>? data = snapshot.hasData ? snapshot.data : null;
    final int count = data != null
        ? (data.isEmpty ? 1 : math.max(0, data.length * 2 - 1))
        : 1;
    final int demo = courseEntry.course.demo;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          if (index == 0) {
            return _buildHeader(context);
          }
          if (data == null) {
            return Padding(
              padding: const EdgeInsets.all(Constants.base),
              child: Center(child: CircularProgress.primary()),
            );
          }
          if (data.isEmpty) {
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(Constants.base),
              child: Text(t.common.no_data),
            ));
          }

          final int itemIndex = (index - 1) ~/ 2;
          if (index.isEven) {
            return const Divider(height: 0, color: Palette.border);
          }
          final Lesson lesson = data[itemIndex];
          return ListTile(
            contentPadding: const EdgeInsets.only(
              left: Constants.base,
              right: Constants.base,
            ),
            leading: SizedBox(
              width: Constants.d40,
              height: Constants.d40,
              child: Center(
                  child: Text(
                '${lesson.order + 1}',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Palette.textSecondary,
                    ),
              )),
            ),
            title: Text(
              lesson.title,
              style: Theme.of(context).textTheme.headline5,
            ),
            subtitle: (lesson.description != null)
                ? Padding(
                    padding: const EdgeInsets.only(top: Constants.baseQ),
                    child: Text(
                      lesson.description!
                          .removeLineBreakSequence()
                          .removeHighlighting(),
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLines: 4,
                    ),
                  )
                : null,
            trailing: Visibility(
                visible: lesson.order >= demo,
                child: const SizedBox(
                    width: Constants.d30,
                    height: Constants.d40,
                    child:
                        Center(child: Icon(Icons.lock, color: Palette.icon)))),
          );
        },
        childCount: count + 1,
      ),
    );
  }
}
