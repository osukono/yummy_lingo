import 'package:flutter/material.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/widgets/text_units.dart';

class TextWidget extends StatelessWidget {
  final TextData data;

  const TextWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 18,
              color:
                  Palette.textWhite.withOpacity(Constants.playerContentOpacity),
            ),
        // style: TextStyle(
        //   height: 1.2,
        //   fontSize: 18,
        //   color:
        //       AppColors.textWhite.withOpacity(Constants.playerContentOpacity),
        // ),
        children: buildPlayerText(data.text),
      ),
    );
  }
}
