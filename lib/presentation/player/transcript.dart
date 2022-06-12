import 'package:flutter/material.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/widgets/text_units.dart';

class Transcript extends StatelessWidget {
  final String text;
  final bool translation;

  const Transcript({
    Key? key,
    required this.text,
    required this.translation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: translation ? Constants.base3 : 0,
        right: translation ? 0 : Constants.base3,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Palette.white.withOpacity(0.1),
          borderRadius:
              const BorderRadius.all(Radius.circular(Constants.baseH)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(Constants.base),
          child: RichText(
            // textWidthBasis: TextWidthBasis.longestLine,
            // textAlign: translation ? TextAlign.center : TextAlign.start,
            text: TextSpan(
              style: TextStyle(
                fontSize: Constants.playerFontSize,
                color: Palette.textWhite
                    .withOpacity(Constants.playerContentOpacity),
              ),
              children: buildPlayerText(text),
            ),
          ),
        ),
      ),
    );
  }
}
