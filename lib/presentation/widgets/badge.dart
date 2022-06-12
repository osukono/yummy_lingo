import 'package:flutter/material.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';

class Badge extends StatelessWidget {
  final String text;

  const Badge({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     color: Palette.borders,
      //     borderRadius: BorderRadius.circular(Constants.base4)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: Constants.base,
          top: Constants.baseQ,
          right: Constants.base,
          bottom: Constants.baseQ,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
