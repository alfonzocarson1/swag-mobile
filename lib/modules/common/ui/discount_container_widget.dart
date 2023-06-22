import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';

import '../utils/palette.dart';

class DiscountContainerWidget extends StatelessWidget {
  const DiscountContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
  double triangleWidth =MediaQuery.of(context).size.width * 0.1;
  double triangleHeigth =MediaQuery.of(context).size.height*0.04; 
  double  triangleTopPosition = MediaQuery.of(context).size.width * 0.0215;

    return Stack(children: [
            Positioned(
        top: triangleTopPosition,
          left: MediaQuery.of(context).size.width * -0.01,
          child: CustomPaint(
            painter: CustomTriangle(Palette.current.primaryNeonGreen, 'right'),
            size:
                 Size(triangleWidth, triangleHeigth), // this is the bounding size of the painter
          )),
      Positioned(
        top:triangleTopPosition,
          left: MediaQuery.of(context).size.width * 0.081,
          child: CustomPaint(
            painter: CustomTriangle(Palette.current.primaryNeonGreen, 'left'),
            size:
                 Size(triangleWidth, triangleHeigth), // this is the bounding size of the painter
          )),
      Container(        
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        height: MediaQuery.of(context).size.height * 0.035,
        width: MediaQuery.of(context).size.width * 0.181,
        color: Palette.current.primaryNeonGreen,
        child: Text(S.of(context).paywall_discount, 
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: "KnockoutCustom",
                  fontSize: 20,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  color: Palette.current.black),
      )),
      Container(
        padding:const EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(
          color: Palette.current.primaryNeonGreen,
        )),
        child: Column(
          children: [
            Text(S.of(context).paywall_price_per_year.toUpperCase(),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontFamily: "KnockoutCustom",
                  fontSize: 44,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  color: Palette.current.primaryWhiteSmoke),
        ),
        Text(S.of(context).paywall_price_per_month.toUpperCase(),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontFamily: "KnockoutCustom",
                  fontSize: 22,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  color: Palette.current.darkGray),
        )
          ],
        )
      ),

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
