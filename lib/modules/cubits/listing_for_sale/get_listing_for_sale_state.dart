part of 'get_listing_for_sale_cubit.dart';

@freezed
class ListingCubitState with _$ListingCubitState {
  const factory ListingCubitState.initial() = _Initial;
  const factory ListingCubitState.loading({@Default(false) bool isFirstFetch}) =
      loading;

  factory ListingCubitState.loadedProfileListings({
    required final List<ListingForSaleProfileResponseModel> listForSale,
  }) = LoadedListingsState;

  factory ListingCubitState.error(final String message) = ErrorListingState;
}
