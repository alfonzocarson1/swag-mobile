import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:swagapp/modules/common/ui/discount_container_widget.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

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
         showPopup();
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
  
  Future showPopup(){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Pending Purchase'),
            content: Text('There is a pending purchase for this product. Would you like to complete or cancel this purchase?'),
            actions: <Widget>[
              TextButton(
                child: Text('Complete Purchase'),
                onPressed: () async {
                  await InAppPurchase.instance.completePurchase(_purchaseableProducts[0] as PurchaseDetails);
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Cancel Purchase'),
                onPressed: () {
                  // As of September 2021, the `in_app_purchase` package doesn't provide a direct way to cancel a purchase.
                  // Depending on the platform and payment method, the cancellation may need to be done outside the app.
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
  }

  void _buyProduct(ProductDetails prod) {
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: prod);
    _iap.buyConsumable(purchaseParam: purchaseParam);
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
      height: MediaQuery.of(context).size.height,  
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
                    height: 
                    20,                  
                    margin:  const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      contentPadding:  EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width * 0.12)),
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
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
               GestureDetector(
                onTap:() => _buyProduct(_purchaseableProducts[0]),
                child: const DiscountContainerWidget()),
               const SizedBox(height: 20),
               GestureDetector(
                onTap: () =>  _buyProduct(_purchaseableProducts[1]),
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
                  _buyProduct(_purchaseableProducts[1]);

               }, 
               type: PrimaryButtonType.green)              
            ],      
          ),
        ),
    )));
  }
}