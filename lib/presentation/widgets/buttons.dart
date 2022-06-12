import 'package:flutter/material.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';

class PlayerButtonStyle extends ButtonStyle {
  PlayerButtonStyle({
    required Color color,
  }) : super(
          foregroundColor: MaterialStateProperty.all(color),
          textStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: Constants.buttonFontSize)),
          side: MaterialStateProperty.all(
              BorderSide(color: color.withOpacity(0.75))),
          backgroundColor: MaterialStateProperty.all(color.withOpacity(0.05)),
        );
}

class SmallButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SmallButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.baseQ),
      ),
      padding: EdgeInsets.zero,
      child: Text(
        text,
        style: const TextStyle(
            color: Palette.textWhite,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none),
      ),
      color: Palette.primary,
      onPressed: onPressed,
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool block;
  final IconData? icon;

  PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.block = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.base2),
      ),
      minWidth: block ? double.infinity : 0,
      color: Palette.primary,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            Constants.base, Constants.base, Constants.base, Constants.base),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: block ? MainAxisSize.max : MainAxisSize.min,
          children: <Widget>[
            Visibility(
              visible: icon != null,
              child: Padding(
                padding: const EdgeInsets.only(right: Constants.base),
                child: Icon(
                  icon,
                  size: Constants.baseM,
                  color: Palette.white,
                ),
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Palette.textWhite,
                  fontSize: Constants.buttonFontSize,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
      onPressed: () async => onPressed(),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;

  const SecondaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      focusElevation: 0,
      disabledElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Palette.primary),
        borderRadius: BorderRadius.circular(Constants.base2),
      ),
      minWidth: double.infinity,
      // color: AppColors.secondaryButton,
      child: Padding(
        padding:
            const EdgeInsets.fromLTRB(0, Constants.base, 0, Constants.base),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: icon != null,
              child: Padding(
                padding: const EdgeInsets.only(right: Constants.base),
                child: Icon(
                  icon,
                  size: Constants.baseM,
                  color: Palette.primary,
                ),
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Palette.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: Constants.buttonFontSize,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
      onPressed: () async => onPressed(),
    );
  }
}
