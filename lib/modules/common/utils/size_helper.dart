import 'package:flutter/material.dart';
import 'dart:math' as math;

Size displaySize(BuildContext context) => MediaQuery.of(context).size;

double displayHeight(BuildContext context) => displaySize(context).height;

double displayWidth(BuildContext context) => displaySize(context).width;

double _width = 0.0, _height = 0.0, _inch = 0.0;
const double _kAspectRatio = 0.56222;

class ResponsiveDesign {
  ResponsiveDesign(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var orient = MediaQuery.of(context).orientation;
    var aspectRatio = (MediaQuery.of(context).size.aspectRatio / _kAspectRatio)
        .clamp(0.5, 1.0);

    if (orient == Orientation.portrait) {
      _width = size.width;
      _height = size.height;
    } else {
      _width = size.height;
      _height = size.width;
    }

    _inch = math.sqrt(
      math.pow(_width * aspectRatio, 2) + math.pow(_height * aspectRatio, 2),
    );
  }

// Ancho
  double widthMultiplier(double pixel) {
    double tempPercent = (pixel * 100.0) / 375.0;
    return (_width * tempPercent) / 100;
  }

  // Alto
  double heightMultiplier(double pixel) {
    double tempPercent = (pixel * 100.0) / 667.0;
    return (_height * tempPercent) / 100;
  }

// Texto
  double textMultiplier(double size) {
    double tempPercent = size / 9;
    return inchPercent(tempPercent);
  }

  double inchPercent(double percent) {
    return (_inch * percent) / 100;
  }

  //Profile Card height
  double responsiveProfileCard(BuildContext context, double pixel) {
    final double itemHeight;
    final double itemWidth;
    var size = MediaQuery.of(context).size;
    itemHeight = (size.height - kToolbarHeight - 100) / pixel;
    itemWidth = size.width / 2;
    return (itemWidth / itemHeight);
  }
}
