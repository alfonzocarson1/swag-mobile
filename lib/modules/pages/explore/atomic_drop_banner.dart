import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/pages/chat/widgets/chat_commence_banner.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class AtomicDropBanner extends StatefulWidget {
  const AtomicDropBanner({super.key});

  @override
  State<AtomicDropBanner> createState() => _AtomicDropBanner();

}

class _AtomicDropBanner extends  State<AtomicDropBanner> {
  bool _isLogged = false;

  @override
  void initState() {
    refresh();
    super.initState();
  }

  void refresh() async {
    this._isLogged = getIt<PreferenceRepositoryService>().isLogged();
  }

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/icons/banner_bg.png',
            fit: BoxFit.cover,
             width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: 0.051 * MediaQuery.of(context).size.height,
            left: 15,
            child: InkWell(
              onTap:
                  () {
                if(!_isLogged){
                  Navigator.of(context, rootNavigator: true).pop();
                }
              },
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: !_isLogged ? Container(
              width: 23,
              height: 23,
              child: Icon(
                Icons.arrow_back,
                color: Palette.current.white,
                size: 22,
              ),
            ) : Container(),
              ),
            ),
          ),
          Positioned(
            top: 0.059 * MediaQuery.of(context).size.height,
            child: Image.asset(
                'assets/icons/Primary.png',
                fit: BoxFit.cover,
                width: 85,
                height: 35,
              ),
          ),
          Positioned(
            top: 0.124 * MediaQuery.of(context).size.height,
          child: Opacity(
            opacity: 0.81,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.77,
              height: (MediaQuery.of(context).size.height * 0.42) * 0.58,
              decoration: BoxDecoration(
                color: Palette.current.primaryNero,
                border: Border.all(color: Palette.current.primaryNeonGreen, width: 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          )),
                Positioned(
                  top: 0.18 * MediaQuery.of(context).size.height - 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                            fontSize: 50,
                            fontWeight: FontWeight.w300,
                            fontFamily: "KnockoutCustom",
                            letterSpacing: 2.64,
                            color: Palette.current.primaryWhiteSmoke,
                          )),
                    ],
                  ),
                ),
                //  SizedBox(height: 5),
                Positioned(
                  top: 0.25 * MediaQuery.of(context).size.height - 25,
                  child: Text("CLOSED",
                      style:
                      Theme.of(context).textTheme.bodyLarge!.copyWith(
                        textBaseline: TextBaseline.alphabetic,
                        fontSize: 88,
                        fontWeight: FontWeight.w400,
                        fontFamily: "KnockoutBantamWeight",
                        letterSpacing: 4.68,
                        color: Palette.current.primaryNeonPink,
                      )),
                )
        ],
      );
  }

}