import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../blocs/buy_sale_listing_bloc/buy_sale_listing_bloc.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/context_service.dart';
import '../../common/utils/handling_errors.dart';
import '../../data/buy_for_sale_listing/i_buy_for_sale_listing_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../enums/listing_status_data.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_response_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_request_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_response_model.dart';
import '../../models/buy_for_sale_listing/rating_buy_request_model.dart';
import '../../models/buy_for_sale_listing/update_purchase_status_request.dart';
import '../../models/profile/profile_model.dart';
import '../../notifications_providers/local_notifications_providers.dart';
import '../route_history/route_history_cubit.dart';

part 'buy_state.dart';
part 'buy_cubit.freezed.dart';

class BuyCubit extends Cubit<BuyStateCubit> {
  final IBuyForSaleListingService buyService;
  BuyCubit(this.buyService) : super(const BuyStateCubit.initial());

  Future<void> getListDetailItem(String productItemId) async {
    try {
      await Future.delayed(const Duration(seconds: 0));
      RouteHistoryCubit routeHistoryCubit = getIt<RouteHistoryCubit>();
      if (routeHistoryCubit.routes[1] == 'Purchase') {
        routeHistoryCubit.toggleRoute(routeHistoryCubit.routes[0]);
      }
      emit(const loading_page(isFirstFetch: true));
      BuyForSaleListingModel responseBody =
          await buyService.buyAForSaleListing(productItemId);
      ProfileModel profileData =
          getIt<PreferenceRepositoryService>().profileData();
      bool isSeller = responseBody.profileId == profileData.accountId;

      bool mySellerListing = (responseBody.status ==
              ListingStatusDataType.pendingPayment.textValue ||
          responseBody.status ==
                  ListingStatusDataType.pendingSellerConfirmation.textValue &&
              isSeller);

      if (responseBody.status != ListingStatusDataType.listed.textValue &&
          !mySellerListing) {
        emit(const loading_page(isFirstFetch: false));
        LocalNotificationProvider.showInAppAllert('Listing unavailable');
        getIt<ContextService>().rootNavigatorKey.currentState!.pop();
        if (routeHistoryCubit.routes[1] == 'ItemDetail') {
          getIt<BuySaleListingBloc>().add(BuySaleListingEvent.getBuyListingItem(
              responseBody.catalogItemId ?? ''));
        }
      } else {
        emit(BuyStateCubit.loadedListDetailItem(responseBody));
        emit(const loading_page(isFirstFetch: false));
      }
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<BuyForSaleListingModel?> getAlertListDetailItem(
      String productItemId) async {
    try {
      BuyForSaleListingModel responseBody =
          await buyService.buyAForSaleListing(productItemId);
      return responseBody;
    } catch (error) {
      return null;
    }
  }

  Future<void> buyListItem(BuyASaleListingModel buyAListing) async {
    try {
      RouteHistoryCubit routeHistoryCubit = getIt<RouteHistoryCubit>();
      if (routeHistoryCubit.routes[1] == 'Purchase') {
        routeHistoryCubit.toggleRoute(routeHistoryCubit.routes[0]);
      }
      BuyASaleListingResponseModel responseBody =
          await buyService.buyAListing(buyAListing);

      if (responseBody.errorCode == "3") {
        LocalNotificationProvider.showInAppAllert('Listing unavailable');
        getIt<ContextService>().rootNavigatorKey.currentState!.pop();
        getIt<ContextService>().rootNavigatorKey.currentState!.pop();
        if (routeHistoryCubit.routes[1] == 'ItemDetail') {
          BuyForSaleListingModel? listinStatus = await getIt<BuyCubit>()
              .getAlertListDetailItem(buyAListing.productItemId ?? '');
          getIt<BuySaleListingBloc>().add(BuySaleListingEvent.getBuyListingItem(
              listinStatus!.catalogItemId ?? ''));
        }
      } else {
        emit(BuyStateCubit.loadedBuyLisItem(responseBody));
      }
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> acceptPurchase(UpdatePurchaseStatusRequestModel model) async {
    try {
      CancelPurchaseResponseModel responseBody =
          await buyService.acceptPurchaseRequest(model);
      getIt<BuyCubit>().getListDetailItem(model.productItemId ?? '');
      emit(BuyStateCubit.acceptPurchaseRequest(responseBody));
    } catch (error) {
      emit(ErrorBuyStateCubit(HandlingErrors().getError(error)));
      throw Exception(error);
    }
  }

  Future<void> cancelPurchase(CancelPurchaseRequestModel model) async {
    try {
      CancelPurchaseResponseModel responseBody =
          await buyService.cancelPurchaseRequest(model);
      if (responseBody.response == false) {
        LocalNotificationProvider.showInAppAllert(
            responseBody.shortMessage ?? '');
      }
      emit(BuyStateCubit.dataCancelPurchaseRequest(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> updateListingStatus(
      UpdatePurchaseStatusRequestModel model) async {
    try {
      CancelPurchaseResponseModel responseBody =
          await buyService.updateListingStatus(model);
      if (responseBody.response == false) {
        LocalNotificationProvider.showInAppAllert(
            responseBody.shortMessage ?? '');
      }
      emit(BuyStateCubit.loadedListUpdateStatus(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> confirmReceivedItem(CancelPurchaseRequestModel model) async {
    try {
      CancelPurchaseResponseModel responseBody =
          await buyService.confirmReceivedItem(model);
      emit(BuyStateCubit.deliveredItemRequest(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> listingsRating(RatingBuyModelRequest model) async {
    try {
      CancelPurchaseResponseModel responseBody =
          await buyService.listingsRating(model);
      emit(BuyStateCubit.deliveredItemRequest(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }
}
