import 'package:flutter/material.dart';

class AppBarSeparator extends PreferredSize {
  AppBarSeparator({Key? key})
      : super(
          key: key,
          child: Container(
            color: Colors.grey[200]!,
            height: 1,
          ),
          preferredSize: const Size.fromHeight(1),
        );
}
