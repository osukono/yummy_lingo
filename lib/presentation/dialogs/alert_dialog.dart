import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_lingo/i18n/strings.g.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';
import 'package:yummy_lingo/presentation/widgets/buttons.dart';

Future<bool?> showNoInternetDialog({required BuildContext context}) async {
  return showAlertDialog(
      context: context,
      header: t.dialog.no_internet_heading,
      message: t.dialog.no_internet_text,
      okButtonText: t.dialog.button_ok);
}

Future<bool?> showAlertDialog({
  required BuildContext context,
  String? header,
  String? message,
  required String okButtonText,
  String? cancelButtonText,
  String? icon,
}) async {
  return showDialog(
    // useRootNavigator: true,
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
              header: header,
              message: message,
              okButtonText: okButtonText,
              cancelButtonText: cancelButtonText,
              icon: icon,
            ),
          );
        },
      ),
    ),
  );
}

class DialogBody extends StatelessWidget {
  final String? header;
  final String? message;
  final String okButtonText;
  final String? cancelButtonText;
  final String? icon;

  const DialogBody({
    Key? key,
    this.header,
    this.message,
    required this.okButtonText,
    this.cancelButtonText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Constants.base),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(
                left: Constants.base2,
                right: Constants.base2,
                bottom: Constants.base2,
              ),
              child: SvgPicture.asset(
                icon!,
                fit: BoxFit.fitWidth,
              ),
            ),
          if (header != null)
            Text(
              header!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),
          if (message != null)
            Padding(
              padding: const EdgeInsets.only(top: Constants.base),
              child: Text(message!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1),
            ),
          const BoxDivider(base: Constants.base3),
          PrimaryButton(
            text: okButtonText,
            onPressed: () async {
              Navigator.of(context).pop(true);
            },
            block: true,
          ),
          if (cancelButtonText != null)
            Padding(
              padding: const EdgeInsets.only(top: Constants.baseH),
              child: SecondaryButton(
                text: cancelButtonText!,
                onPressed: () async {
                  Navigator.of(context).pop(false);
                },
              ),
            )
        ],
      ),
    );
  }
}
