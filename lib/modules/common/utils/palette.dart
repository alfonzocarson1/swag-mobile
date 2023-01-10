import 'package:flutter/material.dart';

abstract class Palette {
  /// Color for header text
  final Color black;

  final Color white;

  final Color primaryEerieBlack;

  final Color blackSmoke;

  final Color primaryNeonGreen;

  final Color primaryNeonPink;

  final Color primaryWhiteSmoke;

  final Color chromeYellow;

  /// Buttons color
  final Color primaryNero;

  final Color errorColor;

  ///icon color
  final Color light1;

  /// the pages background color
  final Color light2;

  /// used for the onboarding bg color
  final Color light3;

  /// white color
  final Color light4;

  final Color grey;

  final Color gray1;

  final Color gray2;

  final Color gray3;

  final Color gray4;

  final Color gray5;

  final Color gray6;

  final Color gray7;

  final Color gray8;

  final Color darkGray;

  final Color blue;

  final Color red;

  final Brightness brightness;

  const Palette({
    required this.black,
    required this.white,
    required this.primaryEerieBlack,
    required this.blackSmoke,
    required this.primaryNeonGreen,
    required this.primaryNeonPink,
    required this.primaryWhiteSmoke,
    required this.chromeYellow,
    required this.primaryNero,
    required this.errorColor,
    required this.light1,
    required this.light2,
    required this.light3,
    required this.light4,
    required this.grey,
    required this.gray1,
    required this.gray2,
    required this.gray3,
    required this.gray4,
    required this.gray5,
    required this.gray6,
    required this.gray7,
    required this.gray8,
    required this.darkGray,
    required this.blue,
    required this.red,
    required this.brightness,
  });

  static Palette current = LightPalette();
}

class LightPalette extends Palette {
  LightPalette()
      : super(
          blackSmoke: const Color(0xFF1E1E1E),
          black: const Color(0xFF080808),
          white: const Color(0xFFFFFFFF),
          primaryEerieBlack: const Color(0xFF181818),
          grey: const Color(0xFF929292),
          primaryNeonGreen: const Color(0xFFB4FF00),
          primaryNeonPink: const Color(0xFFFF0096),
          primaryWhiteSmoke: const Color(0xFFF2F2F2),
          chromeYellow: const Color(0xFFFAA613),
          primaryNero: const Color(0xFF202020),
          errorColor: const Color(0xFFFF3354),
          light1: const Color(0xFFCECACE),
          light2: const Color(0xFFE5E8EA),
          light3: const Color(0xFFE5E8EA),
          light4: const Color(0xFFFFFFFF),
          gray1: const Color(0xFFF3F5F7),
          gray2: const Color(0xFFE5E8EA),
          gray3: const Color(0xFFCCD2D5),
          gray4: const Color(0xFFB9C2C6),
          gray5: const Color(0xFF9DA9AF),
          gray6: const Color(0xFF7E878C),
          gray7: const Color(0xFF656D71),
          gray8: const Color(0xFF545B5E),
          darkGray: const Color(0xFF929292),
          blue: const Color(0xFF0047BA),
          red: const Color(0xFFDA0903),
          brightness: Brightness.light,
        );
}
