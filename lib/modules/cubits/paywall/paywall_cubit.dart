import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:logger/logger.dart';
import 'package:swagapp/modules/api/app_config.dart';
import 'package:swagapp/modules/cubits/app_state/app_state_cubit.dart';
import 'package:swagapp/modules/cubits/profile/get_profile_cubit.dart';
import 'package:swagapp/modules/models/paywall_products/paywall_products.dart';

import '../../common/utils/context_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/paywall/subscription_change_status.dart';
import '../../models/profile/profile_model.dart';
import '../../pages/settings/account/account_page.dart';
import '../../pages/settings/account/verification/kyc_splash_dialog.dart';
import '../route_history/route_history_cubit.dart';
import '../subscription_status/update_subscription_status_cubit.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

part 'paywall_cubit_state.dart';
part 'paywall_cubit.freezed.dart';

class PaywallCubit extends Cubit<PaywallCubitState> {
  final InAppPurchase _iap = InAppPurchase.instance;
  Logger logger = Logger();

  List<ProductDetails> _products = [];
  StreamSubscription<List<PurchaseDetails>>? subscription;
  late PaywallSubscriptionProducts flavorProducts;
  List<SubscriptionOfferDetailsWrapper> androidOffers = [];
  Iterable<SubscriptionOfferDetailsWrapper> androidFreeTrialOffers = [];
  final appCubit = getIt<AppCubit>();
  PaywallCubit() : super(const PaywallCubitState.initial()) {
    inAppPurchaseIntitialization();
  }

  StreamSubscription<List<PurchaseDetails>>? _subscription;

  void inAppPurchaseIntitialization() async {
    if (Platform.isIOS) {
      flavorProducts = getIt<AppConfig>().paywallProducts;
    } else {
      flavorProducts = getIt<AppConfig>().paywallAndroidProducts;
    }

    final bool available = await InAppPurchase.instance.isAvailable();
    await _loadProducts();
    _subscription = _iap.purchaseStream.listen((purchases) {
      completeTransactions(purchases);
      _handlePurchaseUpdates(purchases);
    }, onDone: () {
      _subscription?.cancel();
    }, onError: (error) {
      debugPrint(error);
    });
    subscription = _subscription;
    emit(const PaywallCubitState.initial());
  }

  void startPurchase(String subscriptionType) {
    emit(const PaywallCubitState.progress());
    late ProductDetails _product;
    if (Platform.isIOS) {
      _product =
          _products.firstWhere((product) => product.id == subscriptionType);
    } else {
      for (final product in _products) {
        if (product is GooglePlayProductDetails) {
          _product =
              _products.firstWhere((product) => product.id == subscriptionType);
        }
      }
    }
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: _product);
    _iap.buyNonConsumable(purchaseParam: purchaseParam);

    appCubit.setOverlayDetected();
  }

  Future<void> _loadProducts() async {
    Set<String> productIds;
    productIds = {
      flavorProducts.annualSubscription,
      flavorProducts.monthlySubscription
    };
    ProductDetailsResponse productDetailResponse =
        await _iap.queryProductDetails(productIds);
    if (productDetailResponse.error == null) {
      _products.addAll(productDetailResponse.productDetails);
      final prettyJson =
          _prettyPrintJson(productDetailsResponseToJson(productDetailResponse));
      log(prettyJson);
    }

    if (productDetailResponse.notFoundIDs.isNotEmpty) {
      //TODO handle errors
    }
  }

  String _prettyPrintJson(String jsonInput) {
    final dynamic jsonObject = json.decode(jsonInput);
    const JsonEncoder encoder =
        JsonEncoder.withIndent('  '); // Use '  ' for two-space indentation
    return encoder.convert(jsonObject);
  }

  Map<String, dynamic> extractProductDetailsWrapperData(
      ProductDetails product) {
    if (product is GooglePlayProductDetails) {
      List<Map<String, dynamic>> subscriptionOfferDetailsList = [];

      if (product.productDetails.subscriptionOfferDetails != null) {
        for (var offer in product.productDetails.subscriptionOfferDetails!) {
          List<Map<String, dynamic>> pricingPhasesList = offer.pricingPhases
              .map((phase) => {
                    'billingCycleCount': phase.billingCycleCount,
                    'billingPeriod': phase.billingPeriod,
                    'formattedPrice': phase.formattedPrice,
                    'priceAmountMicros': phase.priceAmountMicros,
                    'priceCurrencyCode': phase.priceCurrencyCode,
                    'recurrenceMode': phase.recurrenceMode.toString(),
                  })
              .toList();

          subscriptionOfferDetailsList.add({
            'basePlanId': offer.basePlanId,
            'offerId': offer.offerId,
            'offerTags': offer.offerTags,
            'offerIdToken': offer.offerIdToken,
            'pricingPhases': pricingPhasesList,
          });
        }
      }

      return {
        'description': product.productDetails.description,
        'name': product.productDetails.name,
        'productId': product.productDetails.productId,
        'productType': product.productDetails.productType
            .toString(), // Convert enum to string
        'title': product.productDetails.title,
        'subscriptionOfferDetails': subscriptionOfferDetailsList,
      };
    }

    return {};
  }

  String productDetailsResponseToJson(ProductDetailsResponse response) {
    return jsonEncode({
      'productDetails': response.productDetails.map((product) {
        return {
          'id': product.id,
          'title': product.title,
          'description': product.description,
          'price': product.price,
          'currencyCode': product.currencyCode,
          'rawPrice': product.rawPrice,
          'detailsWrapper': extractProductDetailsWrapperData(
              product) // Add any other fields from ProductDetails you wish to include
        };
      }).toList(),
      'notFoundIDs': response.notFoundIDs,
      'error': {
        'code': response.error?.code,
        'message': response.error?.message,
        'details': response.error?.details,
        // Add any other fields from IAPError you wish to include
      },
    });
  }

  void _handlePurchaseUpdates(List<PurchaseDetails> purchases) async {
    for (var purchase in purchases) {
      switch (purchase.status) {
        case PurchaseStatus.pending:
          emit(const PaywallCubitState.progress());
          _iap.completePurchase(purchase);
          break;
        case PurchaseStatus.error:
          _iap.completePurchase(purchase);
          emit(PaywallCubitState.error(purchase.error!.message));
          emit(const PaywallCubitState.initial());
          break;
        case PurchaseStatus.canceled:
          emit(const PaywallCubitState.initial());
          break;
        case PurchaseStatus.purchased:
          if (purchase.status == PurchaseStatus.purchased) {
            _iap.completePurchase(purchase);
            log(purchase.purchaseID.toString());
            log(purchase.productID.toString());
            log(purchase.verificationData.toString());
            await sendSubscriptionRequest(purchase.purchaseID ?? "");
            appCubit.clearOverlayDetected();
            emit(const PaywallCubitState.success());
          } else {
            emit(const PaywallCubitState.success());
          }
          break;
        case PurchaseStatus.restored:
          if (purchase.pendingCompletePurchase) {
            _iap.completePurchase(purchase);
            await sendSubscriptionRequest(purchase.purchaseID ?? "");
            await getIt<ProfileCubit>().loadProfileResults();

            appCubit.clearOverlayDetected();
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

  testSubscirption() async {
    emit(const PaywallCubitStateProgress());
    await Future.delayed(const Duration(milliseconds: 2000));
    emit(const PaywallCubitState.success());
  }

  sendSubscriptionRequest(String purchaseId) async {
    await getIt<ProfileCubit>().loadProfileResults();
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();

    var response = await getIt<UpdateSubscriptionStatusCubit>()
        .UpdateSubscriptionStatus(PaywallSubscriptionRequest(
            accountId: profileData.accountId,
            transactionID: purchaseId,
            deviceType: (Platform.isIOS) ? "iOS" : "android"));
    debugPrint("Subscription Response: $response");
    return response;
  }

  reset() {
    emit(const PaywallCubitState.initial());
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
