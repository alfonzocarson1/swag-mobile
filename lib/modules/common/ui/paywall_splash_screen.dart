import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/assets/images.dart';

import '../../../generated/l10n.dart';
import '../utils/palette.dart';

///PaywallSplashScreen
///
///this is a widget that displays the paywall susbscripion screen.
///
///*[hasUsedFreeTrial] (required): this is boolean obtained from the userProfile
///*[removePaywall] (required): this is a callback fuction that is trigger after the subscription is succesfull, it removes the paywall.
//


class PaywallSplashScreen extends StatefulWidget {
  const PaywallSplashScreen({super.key, required this.hasUsedFreeTrial, required this.removePaywall, });
  final bool hasUsedFreeTrial;
  final Function removePaywall;

  @override
  State<PaywallSplashScreen> createState() => _PaywallSplashScreenState();
}

class _PaywallSplashScreenState extends State<PaywallSplashScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),    
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage(AppImages.paywallBackground),
        fit: BoxFit.cover),
      ),
      child: Column(
        children: [
           Image.asset(
                AppImages.logo,
                width: deviceWidth *0.3,
                height: deviceHeight *0.07,
              ),
          Text(S.of(context).paywall_splash_subtitle,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: "KnockoutCustom",
                        fontSize: 50,
                        wordSpacing: 1,
                        fontWeight: FontWeight.w300,
                        color: Palette.current.primaryWhiteSmoke,
                      )),
          Text(S.of(context).paywall_splash_premium_subtitle,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: "KnockoutCustom",
                        fontSize: 27,
                        wordSpacing: 1,
                        fontWeight: FontWeight.w300,
                        color: Palette.current.primaryNeonGreen,
                      )),
        ],
      ),
      );    
 
  }
}