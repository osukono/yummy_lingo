import 'package:flutter/material.dart';

class HighlightedIcon extends StatelessWidget {
  final Icon icon;
  final Color color;
  final double opacity;

  HighlightedIcon({
    Key? key,
    required this.icon,
    this.color = Colors.white,
    this.opacity = 0.65,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color.withOpacity(opacity),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: icon,
    );
  }
}
