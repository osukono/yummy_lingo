import 'package:flutter/material.dart';
import 'package:yummy_lingo/application/player/models.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/widgets/text_units.dart';

class DialogWidget extends StatelessWidget {
  final DialogData data;
  final String session_id;

  DialogWidget({
    Key? key,
    required this.data,
    required this.session_id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color(0xff7791a1),
        // border: Border.all(color: Color(0xff5c616e)),
        color: Palette.scaffold.withOpacity(0.1),
        border: Border.all(color: Palette.white.withOpacity(0.5)),
        borderRadius: const BorderRadius.all(Radius.circular(Constants.baseH)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          Constants.base,
          Constants.base3,
          Constants.base,
          Constants.base3,
        ),
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Palette.textWhite,
                    ),
                children: buildPlayerText(data.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
