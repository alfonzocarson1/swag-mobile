part of 'listing_bloc.dart';

@freezed
class ListingEvent with _$ListingEvent {
  const factory ListingEvent.getListingItem() = _GetListingItem;

  const factory ListingEvent.createListing(ListingForSaleModel model) =
      _ListingEvent;
}
