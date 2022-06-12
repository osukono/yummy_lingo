import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/auth/auth_bloc.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/application/library/library_bloc.dart';
import 'package:yummy_lingo/application/my_course/my_course_bloc.dart';
import 'package:yummy_lingo/application/player/bloc/player_bloc.dart';
import 'package:yummy_lingo/domain/enums.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/presentation/core/helpers.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/dialogs/alert_dialog.dart';

Future<void> myCourseListener(
  BuildContext context,
  MyCourseState state,
) async {
  if (state.pop) {
    AutoRouter.of(context).pop();
    return;
  } else if (state.updatingState == JobState.failed) {
    showAlertDialog(
        context: context,
        header: t.course.error_updating_heading,
        message: t.course.error_updating_text,
        okButtonText: t.dialog.button_ok);
  }
}

Future<void> applicationListener(
  BuildContext context,
  ApplicationState state,
) async {
  state.maybeMap(
    showCourseCompletedDialog: (_) {
      showAlertDialog(
        context: context,
        header: t.course.completed_heading,
        message: t.course.completed_text,
        okButtonText: t.dialog.button_ok,
        icon: AppIcons.congratulations,
      );
    },
    showNoInternetConnectionDialog: (_) {
      showAlertDialog(
        context: context,
        header: t.dialog.no_internet_heading,
        message: t.dialog.no_internet_text,
        okButtonText: t.dialog.button_ok,
      );
    },
    showLessonLockedDialog: (state) {
      showLessonLockedDialog(context, state.course);
    },
    showPaymentSuccessDialog: (state) {
      showPaymentSuccessDialog(context, state.result);
    },
    showUpgradeAnonymousUserDialog: (_) async {
      final bool? result = await showAlertDialog(
        context: context,
        message: t.library.upgrade_anonymous_message,
        okButtonText: t.library.sign_up,
        cancelButtonText: t.dialog.button_cancel,
      );

      if (result != null && result == true) {
        BlocProvider.of<PlayerBloc>(context).add(const PlayerEvent.stop());
        BlocProvider.of<LibraryBloc>(context).add(const LibraryEvent.clear());
        BlocProvider.of<AuthBloc>(context)
            .add(const AuthEvent.upgradeAnonymousUser());
      }
    },
    orElse: () {},
  );
}
