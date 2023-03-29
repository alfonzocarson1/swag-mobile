part of 'listing_bloc.dart';

@freezed
class ListingState with _$ListingState {
  ListingState._();

  factory ListingState.initial() = _InitialListingState;
  factory ListingState.error(final String message) = _ErrorListingState;
  factory ListingState.loadedListingSuccess(
      ListingForSaleModel successCollection) = LoadedSuccessListing;
  factory ListingState.loadedListingItems(
          {required final List<CatalogItemModel> dataListingList}) =
      LoadedListingItemState;
}
