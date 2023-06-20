import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../utils/palette.dart';

class PayWallWidget extends StatelessWidget {
  const PayWallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 800.0,  // the width you want
      height: 1900.0,  // the height you want
      child: ClipRect(
      child: BackdropFilter(
    
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child:  Column(
          children: [
            Text(S.of(context).my_collection,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          fontFamily: "KnockoutCustom",
                          fontSize: 28,
                          color: Palette.current.primaryNeonGreen)),
            Text('Subtitulo de prueba'),
      
          ],      
        ),
    )));
  }
}