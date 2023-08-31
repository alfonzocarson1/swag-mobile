import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/ui/avatar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/models/paywall_products/paywall_products.dart';

import '../../../generated/l10n.dart';
import '../../api/app_config.dart';
import '../../cubits/paywall/paywall_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import '../../services/route_observer_utils.dart';
import '../assets/icons.dart';
import '../utils/palette.dart';
import 'custom_paywall_tile.dart';
import 'discount_container_widget.dart';

///PaywallSplashScreen
///
///this is a widget that displays the paywall susbscripion screen.
///
///*[hasUsedFreeTrial] (required): this is boolean obtained from the userProfile
///*[removePaywall] (required): this is a callback fuction that is trigger after the subscription is succesfull, it removes the paywall.
//

class PaywallSplashScreen extends StatefulWidget {
  static const name= "/PaywallSplash";

  const PaywallSplashScreen({
    super.key,
    required this.hasUsedFreeTrial,
    required this.removePaywall,
  });

  final bool hasUsedFreeTrial;
  final Function removePaywall;

    static Route route({required bool hasUsedFreeTrial, required Function removePaywall}) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => PaywallSplashScreen(
            hasUsedFreeTrial: hasUsedFreeTrial, removePaywall: removePaywall, key: const Key("PaywallSplash")),
      );

  @override
  State<PaywallSplashScreen> createState() => _PaywallSplashScreenState();
}

class _PaywallSplashScreenState extends State<PaywallSplashScreen> with RouteAware {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();
  late PaywallSubscriptionProducts flavorProducts;

  @override
  void initState() {
    super.initState();
    if(Platform.isAndroid){
      flavorProducts = getIt<AppConfig>().paywallAndroidProducts;
    }else{
      flavorProducts = getIt<AppConfig>().paywallProducts;
    }
    
  }

  @override
  void dispose() {
    super.dispose();
  }

    @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ObserverUtils.routeObserver.subscribe(this, ModalRoute.of(context)!);
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
      body: BlocConsumer<PaywallCubit, PaywallCubitState>(
        listener: (context, state) {
          state.maybeWhen(
                          success: () {
                            widget.removePaywall();
                            Navigator.of(context).pop();
                          },
                          orElse: () {},
                        );
        },
        builder: (context, state) {
          return state.maybeWhen(
            progress: () =>  Container(
              height: double.infinity,
               width: double.infinity,
              alignment: Alignment.center,
              child: const Center(child:  SimpleLoader())),
            initial:() =>  SingleChildScrollView(
            child: PaywallBody(deviceWidth: deviceWidth, deviceHeight: deviceHeight, profileData: profileData, payWallConditionList: payWallConditionList, flavorProducts: flavorProducts),
          ), orElse: () =>  SingleChildScrollView(
            child: PaywallBody(deviceWidth: deviceWidth, deviceHeight: deviceHeight, profileData: profileData, payWallConditionList: payWallConditionList, flavorProducts: flavorProducts),
          )
          );
          
        },
      ),
    );
  }
}

class PaywallBody extends StatelessWidget {
  const PaywallBody({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.profileData,
    required this.payWallConditionList,
    required this.flavorProducts,
  });

  final double deviceWidth;
  final double deviceHeight;
  final ProfileModel profileData;
  final List<String> payWallConditionList;
  final PaywallSubscriptionProducts flavorProducts;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
                style:
                    Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontFamily: "KnockoutCustom",
                          fontSize: 50,
                          wordSpacing: 1,
                          fontWeight: FontWeight.w300,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
            Text(S.of(context).paywall_splash_premium_subtitle,
                style:
                    Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontFamily: "KnockoutCustom",
                          fontSize: 27,
                          wordSpacing: 1,
                          fontWeight: FontWeight.w300,
                          color: Palette.current.primaryNeonGreen,
                        )),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            const AvatarPage(
              disableChangeAvatar: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('@${profileData.username}',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(
                            fontFamily: "KnockoutCustom",
                            fontSize: 33,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w300,
                            color: Palette.current.light4)),
                (profileData.kycverified == true)
                    ? SizedBox(
                        height: deviceHeight * 0.03,
                        width: deviceHeight * 0.03,
                        child: Image.asset(AppIcons.checkMarkIcon))
                    : const SizedBox.shrink()
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            ListView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: (deviceHeight <= 840) ? 17 : 22),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: payWallConditionList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: (deviceHeight <= 840) ? 30 : 35,
                    margin: const EdgeInsets.symmetric(vertical: 0),
                    child: CustomPaywallListTile(
                      leadingSpacing: 10,
                      trailingSpacing: 0,
                      leading: SizedBox(
                          height: deviceHeight * 0.03,
                          width: deviceHeight * 0.03,
                          child: Image.asset(AppIcons.listGreenCheck)),
                      title: Text(payWallConditionList[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: (deviceHeight <= 840) ? 14 : 16,
                                  fontFamily: "Ringside Regular",
                                  fontWeight: FontWeight.w300,
                                  color: Palette
                                      .current.primaryWhiteSmoke)),
                      trailing: (payWallConditionList[index]
                              .contains("for sale"))
                          ? Text(
                              S.of(context).pawyall_kyc_required,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize:(deviceHeight <= 840) ? 14:  16,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: "Ringside Regular",
                                      fontWeight: FontWeight.w300,
                                      color: Palette.current.darkGray),
                            )
                          : const SizedBox.shrink(),
                    ),
                  );
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
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
                  color: Palette.current.blueNeon),
            ),
            const SizedBox(height: 35),
            PrimaryButton(
                title:
                    S.of(context).paywall_yearly_button.toUpperCase(),
                onPressed: () {
                  getIt<PaywallCubit>()
                      .startPurchase(flavorProducts.annualSubscription);
                },
                type: PrimaryButtonType.green),
            const SizedBox(height: 20),
            PrimaryButton(
                title:
                    S.of(context).paywall_monthly_button.toUpperCase(),
                onPressed: () {
                    getIt<PaywallCubit>().startPurchase(flavorProducts.monthlySubscription);
                  //getIt<PaywallCubit>().testSubscirption();
                },
                type: PrimaryButtonType.blueNeon),
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
    ]);
  }
}
