import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/assets/images.dart';

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
   // double deviceWidth = MediaQuery.of(context).size.width;
  //  double deviceHeight = MediaQuery.of(context).size.height;
    
    return Container(      
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage(AppImages.paywallBackground),
        fit: BoxFit.cover),
      )
      );    
 
  }
}