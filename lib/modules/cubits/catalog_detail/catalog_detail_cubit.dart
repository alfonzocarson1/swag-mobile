import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/detail/i_detail_service.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';

part 'catalog_detail_state.dart';
part 'catalog_detail_cubit.freezed.dart';

class CatalogDetailCubit extends Cubit<CatalogDetailState> {
  final IDetailService catalogDetailService;
  CatalogDetailCubit(this.catalogDetailService)
      : super(const CatalogDetailState.initial());

  Future<void> notifyAvailability(String catalogId) async {
    try {
      var response = await catalogDetailService.notifyAvailability(catalogId);

      if (response['errorCode'] == '203') {
        emit(ErrorCatalogDetailState(response['errorMessage']));
      }

      // emit(const CatalogDetailState.willBeNotified());
    } catch (error) {
      emit(ErrorCatalogDetailState(HandlingErrors().getError(error)));
    }
  }

  notifyAvailabilityAfterSuscription(String catalogId) async {
    try {
      var response = await catalogDetailService.notifyAvailability(catalogId);

      return response['errorCode'] ?? response['notifyAvailabilityId'];
    } catch (error) {
      return null;
    }
  }

  Future<void> getBuyListingItem(String catalogId) async {
    try {
      BuyForSaleListingResponseModel response =
          await catalogDetailService.buyForSaleListing(catalogId);

      emit(LoadedBuyCatalogDetailState(saledItemdList: [response]));
    } catch (error) {
      emit(ErrorCatalogDetailState(HandlingErrors().getError(error)));
    }
  }
}
