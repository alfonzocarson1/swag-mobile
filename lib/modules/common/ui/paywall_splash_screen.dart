import 'dart:async';

import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/ui/avatar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import '../../../generated/l10n.dart';
import '../../constants/constants.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
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
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  final List<String> _notFoundIds = <String>[];
  final InAppPurchase _iap = InAppPurchase.instance;
  List<ProductDetails> _purchaseableProducts = [];
  final List<PurchaseDetails> _purchases = [];

     @override
  void initState() {
      _subscription = _iap.purchaseStream.listen((purchases) {
        //completePurchases(purchases);
      _purchases.addAll(purchases);
      _handlePurchaseUpdates(purchases);
      
    }); 
    _getProducts();
    super.initState();
  }

  completePurchases(List<PurchaseDetails> purchases){
    purchases.forEach((purchase){
    _iap.completePurchase(purchase);
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  purchaseStoreStatus() async{
    final bool available = await InAppPurchase.instance.isAvailable();
if (!available) {
    print("store not available");
}
  }

  Future<void> _getProducts() async {
    final bool available = await _iap.isAvailable();
    if (!available) {
    print("store not available");
    
    }
    Set<String> _kIds = {annualSubscriptionId, monthlySubscriptionId};  
    final ProductDetailsResponse response = await _iap.queryProductDetails(_kIds);
    if (response.notFoundIDs.isNotEmpty) {
      // Handle the error if any of the products are not found.
    }
    setState(() {
      _purchaseableProducts = response.productDetails;
    });
  }

  void _handlePurchaseUpdates(List<PurchaseDetails> purchases) {
    
    purchases.forEach((purchase) {
      switch (purchase.status) {
        
        case PurchaseStatus.pending:

          break;
        case PurchaseStatus.error:
          _iap.completePurchase(purchase);
          break;
        case PurchaseStatus.purchased:
        debugPrint('Purchase was successful. Product ID: ${purchase.productID}');
        // TODO send to backend transactionID
        //TODO send to backend userID
         InAppPurchase.instance.completePurchase(purchase);
   if (purchase.pendingCompletePurchase)  {
         _iap.completePurchase(purchase);
          widget.removePaywall();
        }             
         break;
        case PurchaseStatus.restored:
          // Deliver the product in your application, then call
          // completePurchase.
          if (purchase.pendingCompletePurchase) {
            _iap.completePurchase(purchase);
            widget.removePaywall();
          }
          break;
        case PurchaseStatus.canceled:
          // TODO: Handle this case.
          break;
      }
    });
  }
   void _buyProduct(ProductDetails prod) {
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: prod);
    _iap.buyConsumable(purchaseParam: purchaseParam);
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
      S.of(context).paywall_splash_condition5,
    ];

  
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 30),
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
              SizedBox(
                height: deviceHeight * 0.03,
              ),
              const AvatarPage(),
              Text('@${profileData.username}',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontFamily: "KnockoutCustom",
                      fontSize: 33,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w300,
                      color: Palette.current.light4)),                 
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
                                (MediaQuery.of(context).size.width * 0.1)),
                        minVerticalPadding: 0,
                        leading: SizedBox(
                            height: 20,
                            width: 20,
                            child:
                                Image.asset('assets/icons/list_green_check.png')),
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
              GestureDetector(
                  onTap: () => _buyProduct(_purchaseableProducts[0]),
                  child: const DiscountContainerWidget()),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _buyProduct(_purchaseableProducts[1]),
                child: Text(
                  S.of(context).paywall_or_price_month.toUpperCase(),
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
                  title: (widget.hasUsedFreeTrial)
                      ? S.of(context).paywall_sign_up_premium.toUpperCase()
                      : S.of(context).paywall_free_trial.toUpperCase(),
                  onPressed: () {
                    _buyProduct(_purchaseableProducts[1]);
                  },
                  type: PrimaryButtonType.green),
                  const SizedBox(height: 35),
               PrimaryButton(
                  title: S.of(context).paywall_splash_decline.toUpperCase(),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  type: PrimaryButtonType.grey),
            ],
          ),
        ),
      ),
    );
  }
}
