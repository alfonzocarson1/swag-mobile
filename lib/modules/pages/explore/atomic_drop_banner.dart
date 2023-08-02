import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class AtomicDropBanner extends StatefulWidget {
  const AtomicDropBanner({super.key});

  @override
  State<AtomicDropBanner> createState() => _AtomicDropBanner();

}

class _AtomicDropBanner extends  State<AtomicDropBanner> {
  @override
  Widget build(BuildContext context) {
    return
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/icons/banner_bg.png',
            fit: BoxFit.fill,
             width: MediaQuery.of(context).size.width,
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 15),
          child: Opacity(
            opacity: 0.65,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              height: (MediaQuery.of(context).size.height * 0.35) * 0.65,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Palette.current.primaryNeonGreen, width: 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/Atomic.png',
                      //  fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("ATOMIC DROP",
                        style:
                        Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 45,
                          fontWeight: FontWeight.w300,
                          fontFamily: "KnockoutCustom",
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                  ],
                ),
                //  SizedBox(height: 5),
                Padding(padding: EdgeInsets.only(left: 30),
                child: Text("CLOSED",
                    textAlign: TextAlign.right,
                    style:
                    Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 65,
                      fontWeight: FontWeight.w600,
                      fontFamily: "KnockoutCustom",
                      letterSpacing: 5.0,
                      color: Palette.current.primaryNeonGreen,
                    )),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icons/Primary.png',
                    //  fit: BoxFit.cover,
                    width: 250,
                    height: 35,
                  ),
                )
              ],
            ),
          )

        ],
      );
  }

}