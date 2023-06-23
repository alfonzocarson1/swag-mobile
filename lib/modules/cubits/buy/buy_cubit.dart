import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/buy_for_sale_listing/i_buy_for_sale_listing_service.dart';
import '../../di/injector.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_accept_purchase_response_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_response_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_request_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_response_model.dart';

part 'buy_state.dart';
part 'buy_cubit.freezed.dart';

class BuyCubit extends Cubit<BuyStateCubit> {
  final IBuyForSaleListingService buyService;
  BuyCubit(this.buyService) : super(const BuyStateCubit.initial());

  Future<void> getListDetailItem(String productItemId) async {
    try {
      await Future.delayed(const Duration(seconds: 0));
      emit(const loading_page(isFirstFetch: true));
      BuyForSaleListingModel responseBody =
          await buyService.buyAForSaleListing(productItemId);
      emit(BuyStateCubit.loadedListDetailItem(responseBody));
      emit(const loading_page(isFirstFetch: false));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> buyListItem(BuyASaleListingModel buyAListing) async {
    try {
      BuyASaleListingResponseModel responseBody =
          await buyService.buyAListing(buyAListing);
      emit(BuyStateCubit.loadedBuyLisItem(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<String> acceptPurchase(String productItemId) async {
    try {
      AcceptPurchaseResponseModel responseBody =
          await buyService.acceptPurchaseRequest(productItemId);

      getIt<BuyCubit>().getListDetailItem(productItemId);
      emit(BuyStateCubit.acceptPurchaseRequest(responseBody));
      return responseBody.channelUrl ?? '';
    } catch (error) {
      emit(ErrorBuyStateCubit(HandlingErrors().getError(error)));
      throw Exception(error);
    }
  }

  Future<void> cancelPurchase(CancelPurchaseRequestModel model) async {
    try {
      CancelPurchaseResponseModel responseBody =
          await buyService.cancelPurchaseRequest(model);
      emit(BuyStateCubit.dataCancelPurchaseRequest(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }
}
