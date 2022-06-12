import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/palette.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/widgets/box_divider.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.scaffold,
      child: Center(child: CircularProgress.primary()),
    );
  }
}

class CircularProgress extends StatelessWidget {
  final Color color;
  final double? value;

  const CircularProgress({
    Key? key,
    required this.color,
    this.value,
  }) : super(key: key);

  factory CircularProgress.primary({double? value}) =>
      CircularProgress(color: Palette.primary, value: value);

  factory CircularProgress.white({double? value}) =>
      CircularProgress(color: Palette.white, value: value);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: value,
      valueColor: AlwaysStoppedAnimation(color),
      strokeWidth: 3,
    );
  }
}

class LinearProgress extends StatelessWidget {
  final double progress;
  final bool animation;
  final Color color;

  const LinearProgress({
    Key? key,
    required this.progress,
    this.animation = false,
    this.color = Palette.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        LinearPercentIndicator(
          padding: const EdgeInsets.only(
              left: Constants.baseQ, right: Constants.baseH),
          width: ScreenSize.width / 3,
          animation: animation,
          lineHeight: Constants.baseH,
          animationDuration: (progress * 500).toInt(),
          percent: progress,
          barRadius: const Radius.circular(4),
          backgroundColor: Palette.border,
          progressColor: color,
        ),
        const BoxDivider(base: Constants.baseQ),
        Visibility(
          visible: progress == 1,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: const Icon(
            Icons.star_rounded,
            size: Constants.baseM,
            color: Palette.active,
          ),
        ),
      ],
    );
  }
}
