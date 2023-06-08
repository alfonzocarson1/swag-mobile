import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/buy_for_sale_listing/i_buy_for_sale_listing_service.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_response_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';

part 'buy_state.dart';
part 'buy_cubit.freezed.dart';

class BuyCubit extends Cubit<BuyStateCubit> {
  final IBuyForSaleListingService buyService;
  BuyCubit(this.buyService) : super(const BuyStateCubit.initial());

  Future<void> getListDetailItem(String productItemId) async {
    emit(
      const _Initial(),
    );
    try {
      BuyForSaleListingModel responseBody =
          await buyService.buyAForSaleListing(productItemId);

      emit(BuyStateCubit.loadedListDetailItem(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> buyListItem(BuyASaleListingModel buyAListing) async {
    try {
      await buyService.buyAListing(buyAListing);

      // emit(BuyStateCubit.loadedBuyListItem(responseBody));
    } catch (error) {
      emit(
        ErrorBuyStateCubit(HandlingErrors().getError(error)),
      );
    }
  }
}
