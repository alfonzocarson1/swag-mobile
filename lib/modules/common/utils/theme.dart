import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

ThemeData appTheme(Palette palette) {
  return ThemeData(
    scaffoldBackgroundColor: palette.light2,
    textTheme: _textTheme(palette),
    backgroundColor: palette.light2,
    canvasColor: palette.light2,
    appBarTheme: _appBarTheme(palette),
    dialogTheme: _dialogTheme(palette),
    buttonTheme: _buttonThemeData(palette),
    elevatedButtonTheme: _elevatedButtonTheme(palette),
    textButtonTheme: _textButtonTheme(palette),
    iconTheme: _iconThemeData(palette),
    sliderTheme: _sliderThemeData(palette),
    bottomSheetTheme: _bottomSheetThemeData(palette),
    fontFamily: GoogleFonts.dmSans().fontFamily,
    brightness: palette.brightness,
    primaryColor: palette.light4,
    accentColor: palette.orange,
    errorColor: palette.errorColor,
    cardColor: palette.light4,
    buttonColor: palette.orange,
    dialogBackgroundColor: palette.light3,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

BottomSheetThemeData _bottomSheetThemeData(Palette palette) {
  return const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(38),
        topRight: Radius.circular(38),
      ),
    ),
  );
}

SliderThemeData _sliderThemeData(Palette palette) {
  return SliderThemeData(
    trackHeight: 3,
    activeTrackColor: palette.orange,
    overlayColor: palette.orange.withOpacity(0.3),
    inactiveTrackColor: const Color(0xFFD6D2D6),
    thumbColor: palette.orange,
    thumbShape: _SliderCircleThumbShape(color: palette.orange),
    trackShape: const _SliderTrackShape(),
  );
}

IconThemeData _iconThemeData(Palette palette) {
  return IconThemeData(
    color: palette.light1,
  );
}

ButtonThemeData _buttonThemeData(Palette palette) {
  return ButtonThemeData(
    padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 24.0),
    buttonColor: palette.orange,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
}

ElevatedButtonThemeData _elevatedButtonTheme(Palette palette) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (states.contains(MaterialState.disabled)) {
          return palette.light1;
        }
        return palette.orange;
      }),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(vertical: 17.0, horizontal: 24.0)),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      textStyle: MaterialStateProperty.all<TextStyle>(GoogleFonts.dmSans(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 17,
        height: 20 / 17,
      )),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
    ),
  );
}

TextButtonThemeData _textButtonTheme(Palette palette) {
  return TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      overlayColor:
          MaterialStateProperty.all<Color>(palette.light1.withOpacity(0.3)),
      minimumSize: MaterialStateProperty.all<Size>(const Size(88.0, 36.0)),
      foregroundColor: MaterialStateProperty.all<Color>(palette.orange),
      textStyle: MaterialStateProperty.all<TextStyle>(GoogleFonts.dmSans(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        height: 20 / 15,
      )),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
    ),
  );
}

DialogTheme _dialogTheme(Palette palette) {
  return DialogTheme(
    backgroundColor: palette.light3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  );
}

AppBarTheme _appBarTheme(Palette palette) {
  return AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Palette.current.light2,
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: palette.black,
    ),
    textTheme: _textTheme(palette),
    actionsIconTheme: IconThemeData(
      color: palette.light4,
    ),
  );
}

TextTheme _textTheme(Palette palette) {
  return TextTheme(
    displayLarge: GoogleFonts.oswald(
      color: palette.black,
      fontWeight: FontWeight.w700,
      fontSize: 36,
      height: 44.27 / 34,
      letterSpacing: -0.7,
    ),
    displayMedium: GoogleFonts.oswald(
      color: palette.black,
      fontWeight: FontWeight.w700,
      fontSize: 26,
      height: 34 / 30,
    ),
    displaySmall: GoogleFonts.oswald(
      color: palette.black,
      fontWeight: FontWeight.bold,
      fontSize: 22,
      height: 22 / 20,
    ),
    headlineMedium: GoogleFonts.oswald(
      color: palette.black,
      // fontWeight: FontWeight.bold,
      fontSize: 20,
      height: 20 / 20,
    ),
    headlineSmall: GoogleFonts.oswald(
      color: palette.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
      height: 20 / 20,
    ),
    bodyLarge: GoogleFonts.oswald(
      color: palette.black,
      fontWeight: FontWeight.normal,
      fontSize: 17,
      height: 20 / 17,
    ),
    bodyMedium: GoogleFonts.oswald(
      color: palette.black,
      fontWeight: FontWeight.normal,
      fontSize: 15,
      height: 21 / 15,
    ),
    bodySmall: GoogleFonts.oswald(
      color: palette.black,
      fontWeight: FontWeight.normal,
      fontSize: 15,
      height: 20 / 15,
    ),
    labelLarge: GoogleFonts.oswald(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 15,
      height: 20 / 15,
    ),
    labelSmall: GoogleFonts.oswald(
        color: palette.black,
        fontWeight: FontWeight.normal,
        fontSize: 13,
        height: 18 / 13,
        letterSpacing: 0),
  );
}

class _SliderCircleThumbShape extends SliderComponentShape {
  static const double _thumbSize = 11.5;
  static const double _disabledThumbSize = 10.0;
  final Paint thumbStrokePaint;
  final Paint thumbFillPaint;
  final Color color;
  final double radius;
  final double strokeWidth;

  _SliderCircleThumbShape({
    required this.color,
    this.radius = 11.5,
    this.strokeWidth = 3,
  })  : thumbStrokePaint = Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth,
        thumbFillPaint = Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return isEnabled
        ? const Size.fromRadius(_thumbSize)
        : const Size.fromRadius(_disabledThumbSize);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;
    canvas.drawCircle(
      center,
      radius,
      thumbStrokePaint,
    );
    canvas.drawCircle(
      center,
      radius - strokeWidth / 2,
      thumbFillPaint,
    );
  }
}

class _SliderTrackShape extends RoundedRectSliderTrackShape {
  const _SliderTrackShape();

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final preferredSize = super.getPreferredRect(
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      offset: offset,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    ///make the track match the parent box width
    return Rect.fromLTRB(
        0, preferredSize.top, parentBox.size.width, preferredSize.bottom);
  }

  // @override
  // void paint(
  //   PaintingContext context,
  //   Offset offset, {
  //   required RenderBox parentBox,
  //   required SliderThemeData sliderTheme,
  //   required Animation<double> enableAnimation,
  //   required TextDirection textDirection,
  //   required Offset thumbCenter,
  //   bool isDiscrete = false,
  //   bool isEnabled = false,
  //   double additionalActiveTrackHeight = 2,
  // }) {
  //   super.paint(
  //     context,
  //     offset,
  //     parentBox: parentBox,
  //     sliderTheme: sliderTheme,
  //     enableAnimation: enableAnimation,
  //     textDirection: textDirection,
  //     thumbCenter: thumbCenter,
  //     isDiscrete: isDiscrete,
  //     isEnabled: isEnabled,
  //     additionalActiveTrackHeight: 0,
  //   );
  // }
}
