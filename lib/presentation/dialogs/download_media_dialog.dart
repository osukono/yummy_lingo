import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/application/jobs/download_media/download_media_bloc.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/infrastructure/moor/moor_database.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';

Future<bool?> showDownloadMediaDialog({
  required BuildContext context,
  required Course course,
}) async {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Constants.d30))),
      content: Builder(
        builder: (context) {
          return Container(
            width: MediaQuery.of(context).size.width - Constants.d30 * 2,
            child: BlocProvider<DownloadMediaBloc>(
              create: (context) => DownloadMediaBloc()
                ..add(DownloadMediaEvent.downloadCourse(course: course)),
              child: DialogBody(course: course),
            ),
          );
        },
      ),
    ),
  );
}

class DialogBody extends StatefulWidget {
  final Course course;

  DialogBody({Key? key, required this.course}) : super(key: key);

  @override
  _DialogBodyState createState() => _DialogBodyState(course: course);
}

class _DialogBodyState extends State<DialogBody> {
  final Course course;
  late StreamSubscription _connectivitySubscription;

  _DialogBodyState({required this.course});

  @override
  void initState() {
    super.initState();

    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      BlocProvider.of<DownloadMediaBloc>(context)
          .add(DownloadMediaEvent.connectivityChanged(result: result));
    });
  }

  @override
  void dispose() {
    super.dispose();

    _connectivitySubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DownloadMediaBloc, DownloadMediaState>(
      builder: (context, state) {
        return buildBody(state);
      },
      listener: listener,
    );
  }

  Future<void> listener(BuildContext context, DownloadMediaState state) async {
    switch (state.state) {
      case JobState.completed:
        Navigator.of(context).pop(true);
        break;
      case JobState.failed:
        Navigator.of(context).pop(false);
        BlocProvider.of<ApplicationBloc>(context)
            .add(const ApplicationEvent.showNoInternetConnectionDialog());
        break;
      default:
        break;
    }
    // if (state.progress == 1) {
    //   Navigator.pop(context, true);
    // }
  }

  Widget buildBody(DownloadMediaState state) {
    return Padding(
      padding: const EdgeInsets.all(Constants.base),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: Constants.base2,
              right: Constants.base2,
              bottom: Constants.base2,
            ),
            child: SvgPicture.asset(
              AppIcons.downloading,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(
            t.course.downloading_heading,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            t.course.downloading_text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const BoxDivider(base: Constants.base3),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: SizedBox(
                  width: ScreenSize.width / 3,
                  height: Constants.baseH,
                  child: LinearPercentIndicator(
                    padding: const EdgeInsets.only(
                        left: Constants.baseQ, right: Constants.baseH),
                    width: ScreenSize.width / 3,
                    lineHeight: Constants.baseH,
                    percent: state.progress,
                    // linearStrokeCap: LinearStrokeCap.roundAll,
                    barRadius: const Radius.circular(4),
                    backgroundColor: Palette.border,
                    progressColor: Palette.primary,
                  ),
                ),
              ),
              const BoxDivider(base: Constants.baseH),
              Visibility(
                visible: state.total != 0,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                child: Center(
                  child: Text(
                    '${state.completed}/${state.total}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              )
            ],
          ),
          const BoxDivider(base: Constants.baseH),
          Visibility(
            visible: state.progress < 100,
            child: state.failure.fold(
              () => Container(),
              (failure) => failure.map(
                noInternet: (_) => Text(
                  t.dialog.no_internet_heading,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                storageError: (_) => Text(
                  t.course.error_storage_full,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
          ),
          const BoxDivider(base: Constants.base),
          SecondaryButton(
            text: t.dialog.button_cancel,
            onPressed: () async {
              BlocProvider.of<DownloadMediaBloc>(context)
                  .add(const DownloadMediaEvent.cancel());
              Navigator.of(context).pop(false);
            },
          ),
        ],
      ),
    );
  }
}
