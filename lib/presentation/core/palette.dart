import 'package:flutter/material.dart';

//https://colorcodes.io/

// ignore: avoid_classes_with_only_static_members
abstract class Palette {
  //Original    0xFF405FD3
  //Denim Blue  0xFF1560BD

  //Facebook    0xFF4267B2
  //Google      0xFF3475e0 ++

  static const int steel = 0xff777b7e;
  static const int ash = 0xff544c4a;
  static const int fossil = 0xff787276;

  //Dark cyan, safe(0xff009999)
  static const int _primary = 0xff3296B2;
  static const int _primaryDark = 0xff48494b; //0xFF2e68c9;

  static const Color primary = Color(_primary);
  static const Color primaryLight = Color(_primary);
  static const Color primaryDark = Color(_primaryDark);
  static const Color accent = Color(_primary);
  static const Color progress = Color(0xFF3296B2);

  static const Color grey = Colors.grey;
  static const Color divider = grey;
  static const Color white = Colors.white; //Color(0xFFF5F6FB);
  static const Color black = Color(0xFF100D3C);

  // static const Color buttonBackground = primary;
  // static const Color buttonText = white;

  static const Color darkestAlice = Color(0xff107896);
  static const Color darkerAlice = Color(0xff1287a8);
  static const Color alice = Color(0xff1496bb);
  static const Color lighterAlice = Color(0xff43abc9);

  static const Color playerBackground = darkerAlice;
  static const Color playerControlBackground = white;

  static const Color playerPrimary = white;
  static const Color playerAccent = Color(0xFFFFE780);
  static const Color playerDisabled = Color(0xff57ADC5);

  static const Color scaffold = Color(0xfffafafb);

  static const Color textMain = Color(0xFF686D85);
  static const Color textSecondary = Color(0xFFBDC1D2);
  static const Color textDark = Colors.black87; //black;
  static const Color textWhite = white;
  static const Color textMuted = Color(0xFFA9A9A9);

  static const Color icon = Color(0xFFBDC1D2);

  static const Color secondaryButton = Color(0xFF056580);
  static const Color border = Color(0xFFE8E8F0);
  static final Color actionSheetColor = white.withAlpha(100);

  //Original    0xFFF2C94C
  //Saffron     0xFFFFC72C
  //Dark Yellow 0xFFF6BE00
  //Maize       0xFFF1BE48
  //Honey       0xFFEBBC4E

  static const Color active = Color(0xFFF1BE48);
}
