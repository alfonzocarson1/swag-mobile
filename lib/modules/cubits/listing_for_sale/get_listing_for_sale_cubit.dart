import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/listing/i_listing_service.dart';

import '../../models/listing_for_sale/profile_listing_model.dart';

part 'get_listing_for_sale_state.dart';
part 'get_listing_for_sale_cubit.freezed.dart';

class ListingProfileCubit extends Cubit<ListingCubitState> {
  final IListingService listingService;
  ListingProfileCubit(this.listingService)
      : super(const ListingCubitState.initial());

  Future<void> loadResults() async {
    emit(
      const _Initial(),
    );
    try {
      ListingForSaleProfileResponseModel response =
          await listingService.getListingForSale();

      emit(LoadedListingsState(listForSale: [response]));
    } catch (error) {
      emit(
        ErrorListingState(HandlingErrors().getError(error)),
      );
    }
  }
}
