import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:swagapp/modules/data/listing/i_listing_service.dart';
import 'package:swagapp/modules/models/ui_models/async_value.dart';

import '../../models/listing_for_sale/listing_for_sale_model.dart';

typedef PublicProfileListingsState = AsyncValue<List<ListingForSaleModel>>;

class PublicProfileListingsCubit extends Cubit<PublicProfileListingsState> {
  final IListingService _listingService;
  PublicProfileListingsCubit(this._listingService)
      : super(const AsyncValue.loading());

  final Map<String, List<ListingForSaleModel>> _cache = {};

  Future<void> loadProfileListings(String profileId) async {
    emit(AsyncValue.loading(_cache[profileId]));
    try {
      final wrapper =
          await _listingService.getListingForSaleForProfile(profileId);
      _cache[profileId] = wrapper.listForSale;
      emit(AsyncValue.loaded(wrapper.listForSale));
    } catch (e, stk) {
      debugPrintStack(
        stackTrace: stk,
        label: e.toString(),
      );
      emit(AsyncValue.error(e));
    }
  }
}
