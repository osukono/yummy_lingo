import 'package:flutter/widgets.dart';

class BoxDivider extends StatelessWidget {
  final double base;

  const BoxDivider({
    Key? key,
    required this.base,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: base, width: base);
  }
}
