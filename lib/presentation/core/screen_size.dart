import 'package:flutter/widgets.dart';

// ignore: avoid_classes_with_only_static_members
class ScreenSize {
  static late double width;
  static late double height;

  static void init(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    width = query.size.width - (query.padding.left + query.padding.right);
    height = query.size.height - (query.padding.top + query.padding.bottom);
  }
}
