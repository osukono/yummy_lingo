import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yummy_lingo/application/bloc/application_bloc.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/images.dart';
import 'package:yummy_lingo/presentation/dialogs/alert_dialog.dart';

void showSnackBar(context, String text) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 5),
    ),
  );
}

Future<void> showLessonLockedDialog(BuildContext context, String course) async {
  final bool result = await showDialog(
    useRootNavigator: true,
    barrierDismissible: false,
    context: context,
    builder: (_) => AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Constants.d30))),
      content: Builder(
        builder: (context) {
          return Container(
            width: MediaQuery.of(context).size.width - 2 * Constants.d30,
            child: DialogBody(
              header: t.payment.lesson_locked_heading,
              message: t.payment.lesson_locked_message,
              okButtonText: t.payment.lesson_locked_button_buy,
              cancelButtonText: t.payment.lesson_locked_button_cancel,
              icon: AppIcons.locked,
            ),
          );
        },
      ),
    ),
  );

  if (result) {
    BlocProvider.of<ApplicationBloc>(context)
        .add(ApplicationEvent.showBuyCourseDialog(course: course));
  }
}

Future<void> showPaymentSuccessDialog(BuildContext context, bool result) async {
  showAlertDialog(
    context: context,
    message: result ? t.payment.success_message : t.payment.error_message,
    okButtonText: t.payment.success_button_continue,
  );
}
