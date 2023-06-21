import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/palette.dart';

class DiscountContainerWidget extends StatelessWidget {
  const DiscountContainerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.03,
        width: MediaQuery.of(context).size.width * 0.18,
        color: Palette.current.primaryNeonGreen,
      ),
      Container(
        height: 97,
        decoration: BoxDecoration(
            border: Border.all(
          color: Palette.current.primaryNeonGreen,
        )),
      ),
      Positioned(
        top: 10,
          left: -5,
          child: CustomPaint(
            painter: CustomTriangle(Palette.current.primaryNeonGreen, 'right'),
            size:
                const Size(45, 35), // this is the bounding size of the painter
          )),
      Positioned(
        top: 8,
          left: 33,
          child: CustomPaint(
            painter: CustomTriangle(Palette.current.primaryNeonGreen, 'left'),
            size:
                const Size(45, 35), // this is the bounding size of the painter
          )),
    ]);
  }
}

class CustomTriangle extends CustomPainter {
  @override
  
 final Color color;
 final String direction;

  CustomTriangle(this.color, this.direction);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color; // Color from parameter

    var path = Path();
    switch (direction) {
  case 'left':
        path.moveTo(size.width, 0); // starts at the top right of the bounding box
        path.lineTo(size.width, size.height); // goes to the bottom right
        path.lineTo(0, size.height / 2); // goes to the center left
        break;
      case 'right':
      default:
        path.moveTo(0, 0); // starts at the top left of the bounding box
        path.lineTo(size.width, size.height / 2); // goes to the center right
        path.lineTo(0, size.height); // goes to the bottom left
        break;
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
