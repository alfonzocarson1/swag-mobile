part of 'buy_sale_listing_bloc.dart';

@freezed
class BuySaleListingEvent with _$BuySaleListingEvent {
  const factory BuySaleListingEvent.getBuyListingItem(String itemId) =
      _GetBuyListingItem;
}
