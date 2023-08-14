import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/ui/custom_paywall_tile.dart';
import 'package:swagapp/modules/common/ui/discount_container_widget.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/cubits/paywall/paywall_cubit.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';

import '../../../generated/l10n.dart';

import '../../api/app_config.dart';
import '../../constants/constants.dart';

import '../../models/paywall_products/paywall_products.dart';
import '../utils/palette.dart';

class PayWallWidget extends StatefulWidget {
  const PayWallWidget(
      {super.key, required this.hasUsedFreeTrial, required this.removePaywall, this.disableScroll});
  final bool hasUsedFreeTrial;
  final Function removePaywall;
  final bool? disableScroll;

  @override
  State<PayWallWidget> createState() => _PayWallWidgetState();
}

class _PayWallWidgetState extends State<PayWallWidget> {
  late final ProfileModel profileData;
  late PaywallSubscriptionProducts flavorProducts; 

  @override
  void initState() {
    profileData = getIt<PreferenceRepositoryService>().profileData();
    flavorProducts = getIt<AppConfig>().paywallProducts;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> payWallConditionList = [
      S.of(context).paywall_condition1,
      S.of(context).paywall_condition2,
      S.of(context).paywall_condition3,
      S.of(context).paywall_condition4,
    ];

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio =  MediaQuery.of(context).size.aspectRatio;

    return Container(
      height: height,
      width: width,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: SingleChildScrollView(
            physics: (widget.disableScroll == true) ? const NeverScrollableScrollPhysics() : const ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // This will take as much space as the text needs
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      S.of(context).paywall_title.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300,
                            fontFamily: "KnockoutCustom",
                            fontSize: 30,
                            color: Palette.current.primaryNeonGreen,
                          ),
                    ),
                  ),
          
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(S.of(context).paywall_free_trial.toUpperCase(),
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontFamily: "KnockoutCustom",
                            fontSize: 44,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            color: Palette.current.primaryWhiteSmoke)),
                  ),
                   SizedBox(
                    height: height * 0.02,
                  ),
       
                 ListView.builder(
                    padding:  const EdgeInsets.symmetric(horizontal: 26),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: payWallConditionList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                       height: (height < 667) ? 37 : 35,                 
                        margin: const EdgeInsets.symmetric(vertical: 0),
                        child: CustomPaywallListTile(
                          leadingSpacing: 10,
                          trailingSpacing: 0,                     
                          leading: SizedBox(
                              height: height * 0.025,
                              width: height * 0.025,
                              child: Image.asset(AppIcons.listGreenCheck)),
                          title: Text(payWallConditionList[index],                        
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: (width < 390)  ? 14: 16,
                                    fontFamily: "Ringside Regular",
                                      fontWeight: FontWeight.w300,
                                      color: Palette.current.primaryWhiteSmoke)),
                          trailing: (payWallConditionList[index].contains("for sale")) ? Text(S.of(context).pawyall_kyc_required, style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: (width < 390)  ? 14 :16,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: "Ringside Regular",
                                      fontWeight: FontWeight.w300,
                                      color: Palette.current.darkGray),) : const SizedBox.shrink() ,
                        ),
                      );
                    }),
                  SizedBox(
                    height: height * 0.02,
                  ),          
                 const DiscountContainerWidget(),
                  SizedBox(
                    height: height * 0.01,
                  ),          
                  Text(
                    S.of(context).paywall_or_price_month.toUpperCase(),
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          fontFamily: "KnockoutCustom",
                          fontSize: 25,
                          color: Palette.current.blueNeon,
                        ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  PrimaryButton(
                    maxHeight: (height <= 667) ? 50 : 70 ,
                    title: S.of(context).paywall_yearly_button.toUpperCase(),
                    onPressed: () {
                      getIt<PaywallCubit>().startPurchase(flavorProducts.annualSubscription);
                    },
                    type: PrimaryButtonType.green,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  PrimaryButton(
                    maxHeight: (height <= 667) ? 50 : 70,
                    title: S.of(context).paywall_monthly_button.toUpperCase(),
                    onPressed: () {
                      getIt<PaywallCubit>().startPurchase(flavorProducts.monthlySubscription);
                    },
                    type: PrimaryButtonType.blueNeon,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
