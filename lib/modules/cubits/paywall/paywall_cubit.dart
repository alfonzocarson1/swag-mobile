import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:swagapp/modules/cubits/profile/get_profile_cubit.dart';
import 'package:swagapp/modules/data/paywall/i_paywall_service.dart';

import '../../constants/constants.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/paywall/subscription_change_status.dart';
import '../../models/profile/profile_model.dart';
import '../subscription_status/update_subscription_status_cubit.dart';

part 'paywall_cubit_state.dart';
part 'paywall_cubit.freezed.dart';

class PaywallCubit extends Cubit<PaywallCubitState> {
  final InAppPurchase _iap = InAppPurchase.instance;
  List<ProductDetails> _products = [];
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData(); 
 StreamSubscription<List<PurchaseDetails>>? subscription;
  
  PaywallCubit() : super(const PaywallCubitState.initial()){
 inAppPurchaseIntitialization();
  }

  StreamSubscription<List<PurchaseDetails>>? _subscription;

  void inAppPurchaseIntitialization()async{
   await _loadProducts();
    _subscription = _iap.purchaseStream.listen((purchases) {
        completeTransactions(purchases);
      _handlePurchaseUpdates(purchases);
    });
    subscription = _subscription;
  }

  void startPurchase(String subscriptionType) {
 
    emit(const PaywallCubitState.progress());
    final ProductDetails product = _products.firstWhere((product) => product.id == subscriptionType);    
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);   
    _iap.buyNonConsumable(purchaseParam: purchaseParam);
    
  }

  Future<void> _loadProducts() async {
     Set<String> productIds = {annualSubscriptionId, monthlySubscriptionId};  // replace with your product IDs
    final ProductDetailsResponse response = await _iap.queryProductDetails(productIds);
    if (response.notFoundIDs.isNotEmpty) {
      //TODO handle errors
    }
    _products = response.productDetails;
  }

  void _handlePurchaseUpdates(List<PurchaseDetails> purchases) async {
      for (var purchase in purchases) {
        switch (purchase.status) {
            case PurchaseStatus.pending:        
                emit(PaywallCubitState.progress());
                _iap.completePurchase(purchase);
                break;
            case PurchaseStatus.error:
                emit(PaywallCubitState.error(purchase.error!.message));
                break;
            case PurchaseStatus.canceled:
            emit(const PaywallCubitState.initial());
            break;
            case PurchaseStatus.purchased:
                if (purchase.status == PurchaseStatus.purchased) {
                    _iap.completePurchase(purchase);
                    await sendSubscriptionRequest(purchase.purchaseID ??"");
                  // var subscriptionResponse = await sendSubscriptionRequest(purchase.purchaseID ??"");
                    emit(const PaywallCubitState.success());
                }
                else{
                        emit(const PaywallCubitState.success());
                }
               await getIt<ProfileCubit>().loadProfileResults();
                emit(const PaywallCubitState.success());
                break;
            case PurchaseStatus.restored:
                if (purchase.pendingCompletePurchase) {
                    _iap.completePurchase(purchase);
                    await sendSubscriptionRequest(purchase.purchaseID ??"");
                   await getIt<ProfileCubit>().loadProfileResults();
                    emit(const PaywallCubitState.success());
                }
                break;
            default:
                // handle other states if necessary
        }
    }
  }


  completeTransactions(List<PurchaseDetails> purchases) async {
  for (var _purchaseDetails in purchases) {
    if (_purchaseDetails.pendingCompletePurchase) {
      await _iap.completePurchase(_purchaseDetails);
   }
}
  } 


  sendSubscriptionRequest(String purchaseId) async {
    
     var response = await getIt<UpdateSubscriptionStatusCubit>().UpdateSubscriptionStatus(
            PaywallSubscriptionRequest(
            accountId: profileData.accountId, 
            transactionID: purchaseId, 
            deviceType: "iOS")
      ); 
      return response;
      

  }

  sendSubscriptionRequest2()async{
      var response = await getIt<UpdateSubscriptionStatusCubit>().UpdateSubscriptionStatus(
            PaywallSubscriptionRequest(
            accountId: profileData.accountId, 
            transactionID: "2000000363137282", 
            deviceType: "iOS")
      );
      return response;
    
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
 
}
