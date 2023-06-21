import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/discount_container_widget.dart';

import '../../../generated/l10n.dart';
import '../utils/palette.dart';

class PayWallWidget extends StatelessWidget {
  const PayWallWidget({super.key});

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
      width: MediaQuery.of(context).size.width,  // the width you want
      height: MediaQuery.of(context).size.height * 0.6,  // the height you want
      child: ClipRect(
      child: BackdropFilter(
    
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
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
                shrinkWrap: true,
                itemCount: payWallConditionList.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(     
                    height: 20,                  
                    margin:  const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 90.0),
                      minVerticalPadding: 0,          
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/icons/list_green_check.png')),
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
                const SizedBox(
                  height: 40,
                ),
               const DiscountContainerWidget(),              
            ],      
          ),
        ),
    )));
  }
}