import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/ui/avatar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/models/paywall_products/paywall_products.dart';

import '../../../generated/l10n.dart';
import '../../api/app_config.dart';
import '../../constants/constants.dart';
import '../../cubits/paywall/paywall_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import '../assets/icons.dart';
import '../utils/palette.dart';
import 'discount_container_widget.dart';

///PaywallSplashScreen
///
///this is a widget that displays the paywall susbscripion screen.
///
///*[hasUsedFreeTrial] (required): this is boolean obtained from the userProfile
///*[removePaywall] (required): this is a callback fuction that is trigger after the subscription is succesfull, it removes the paywall.
//

class PaywallSplashScreen extends StatefulWidget {
  const PaywallSplashScreen({
    super.key,
    required this.hasUsedFreeTrial,
    required this.removePaywall,
  });
  final bool hasUsedFreeTrial;
  final Function removePaywall;

  @override
  State<PaywallSplashScreen> createState() => _PaywallSplashScreenState();
}

class _PaywallSplashScreenState extends State<PaywallSplashScreen> {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();
  late PaywallSubscriptionProducts flavorProducts; 

  @override
  void initState() {
    super.initState();
    flavorProducts = getIt<AppConfig>().paywallProducts;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    List<String> payWallConditionList = [
      S.of(context).paywall_splash_condition1,
      S.of(context).paywall_splash_condition2,
      S.of(context).paywall_splash_condition3,
      S.of(context).paywall_splash_condition4,
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [

           Container(
          padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
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
                  width: deviceWidth * 0.3,
                  height: deviceHeight * 0.07,
                ),
                Text(S.of(context).paywall_free_trial.toUpperCase(),
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
                SizedBox(
                  height: deviceHeight * 0.03,
                ),
                const AvatarPage(disableChangeAvatar: true,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('@${profileData.username}',
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            fontFamily: "KnockoutCustom",
                            fontSize: 33,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w300,
                            color: Palette.current.light4)),
                            (profileData.kycverified == true) ?
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(AppIcons.checkMarkIcon)
                ): const SizedBox.shrink()
                  ],
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: payWallConditionList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 20,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal:
                                  (MediaQuery.of(context).size.width * 0.04)),
                          minVerticalPadding: 0,
                          leading: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(AppIcons.listGreenCheck)),
                          title: Text(payWallConditionList[index],                        
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Palette.current.primaryWhiteSmoke)),
                        ),
                      );
                    }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                const DiscountContainerWidget(),
                const SizedBox(height: 20),
                Text(
                  S.of(context).paywall_or_price_month.toUpperCase(),
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300,
                      fontFamily: "KnockoutCustom",
                      fontSize: 25,
                      color: Palette.current.primaryNeonGreen),
                ),
                const SizedBox(height: 35),
                PrimaryButton(
                    title: (widget.hasUsedFreeTrial)
                        ? S.of(context).paywall_sign_up_premium.toUpperCase()
                        : S.of(context).paywall_yearly_button.toUpperCase(),
                    onPressed: () {
                        getIt<PaywallCubit>().startPurchase(flavorProducts.annualSubscription);
                    },
                    type: PrimaryButtonType.green),
                const SizedBox(height: 20),
                PrimaryButton(
                    title: S.of(context).paywall_monthly_button.toUpperCase(),
                    onPressed: ()  {
                        getIt<PaywallCubit>().startPurchase(flavorProducts.monthlySubscription);
                    },
                    type: PrimaryButtonType.blueNeon),
                BlocListener<PaywallCubit, PaywallCubitState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      success: ()  {                         
                        widget.removePaywall();
                        Navigator.of(context).pop();
                        },
                      orElse: () {},
                    );
                  },
                  child: BlocBuilder<PaywallCubit, PaywallCubitState>(
                    builder: (context, state) {
                      state.maybeWhen(
                        progress: () => const SimpleLoader(),
                        orElse: ()=> const SizedBox.shrink(),
                        );
                        return Container();
                    },
                  ),
                )
              ],
                     ),
           ),
                          Positioned(
            right: 10,
            top: 30,
            child: IconButton(
              iconSize: 30,
              color: Palette.current.primaryNeonGreen,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.clear_outlined,
                size: 20,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
