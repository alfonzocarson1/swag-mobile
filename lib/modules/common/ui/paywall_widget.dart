import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/ui/discount_container_widget.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/cubits/paywall/paywall_cubit.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';

import '../../../generated/l10n.dart';

import '../../constants/constants.dart';

import '../utils/palette.dart';

class PayWallWidget extends StatefulWidget {
  const PayWallWidget({super.key, required this.hasUsedFreeTrial, required this.removePaywall});
final bool hasUsedFreeTrial;
final Function removePaywall;

  @override
  State<PayWallWidget> createState() => _PayWallWidgetState();

}


class _PayWallWidgetState extends State<PayWallWidget> {

  late final ProfileModel profileData;

   @override
  void initState() {  
    profileData = getIt<PreferenceRepositoryService>().profileData(); 
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {       
    
    List<String> payWallConditionList =[
      S.of(context).paywall_condition1,
      S.of(context).paywall_condition2,
      S.of(context).paywall_condition3,
      S.of(context).paywall_condition4,
      S.of(context).paywall_condition5,
    ];
      
    return  SizedBox(
      width: MediaQuery.of(context).size.width,  
      child: ClipRect(
      child: BackdropFilter(
    
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
          child: Column(
            children: [
              Text(S.of(context).paywall_title.toUpperCase(),
              textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300,
                            fontFamily: "KnockoutCustom",
                            fontSize: 30,
                            color: Palette.current.primaryNeonGreen)),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                clipBehavior: Clip.hardEdge,
                shrinkWrap: true,
                itemCount: payWallConditionList.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(     
                    height: 
                    20,
                    width: 50,                  
                    margin:  const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      contentPadding:  EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * 0.05)),
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
                }
                ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
               GestureDetector(
                onTap:() =>
                getIt<PaywallCubit>().startPurchase(annualSubscriptionId),
                child: const DiscountContainerWidget()),
               const SizedBox(height: 20),
               GestureDetector(
                onTap: () =>  getIt<PaywallCubit>().startPurchase(monthlySubscriptionId),
                 child: Text(S.of(context).paywall_or_price_month.toUpperCase(),
                 style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w300,
                              fontFamily: "KnockoutCustom",
                              fontSize: 25,
                              color: Palette.current.primaryNeonGreen),
                 ),
               ),
               const SizedBox(height: 35),
               PrimaryButton(
                title: (widget.hasUsedFreeTrial) ? S.of(context).paywall_sign_up_premium.toUpperCase() :S.of(context).paywall_free_trial.toUpperCase(), 
                onPressed: (){
                  getIt<PaywallCubit>().startPurchase(monthlySubscriptionId);
               }, 
               type: PrimaryButtonType.green)              
            ],      
          ),
        ),
    )));
  }
}