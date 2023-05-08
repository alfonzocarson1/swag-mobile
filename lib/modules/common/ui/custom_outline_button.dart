import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class CustomOutlineButton extends StatelessWidget {

  final String text;
  final Function onTap;
  final String iconPath;
  final double? width;
  final double? padding;

  const CustomOutlineButton({
    super.key, 
    this.width,
    this.padding, 
    required this.text, 
    required this.onTap, 
    required this.iconPath, 
  });

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: this.padding ?? 0),
        height: 60,
        width: this.width,
        decoration: BoxDecoration(
          border: Border.all(color: Palette.current.primaryNeonGreen),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> 
          [
            const SizedBox(height: 50),
            
            Image.asset(
              this.iconPath,
              height: 20,
              width: 20,
            ),
            
            const SizedBox(width: 10),
    
            Text(
              this.text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontFamily: "Knockout",
                fontSize: 30,
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
                color: Palette.current.white,
              ),
            ),
          ],
        ),
      ),
      onTap: ()=> this.onTap(),
    );
  }
}

