part of 'buy_sale_listing_bloc.dart';

@freezed
class BuySaleListingState with _$BuySaleListingState {
  BuySaleListingState._();

  factory BuySaleListingState.initial() = _InitialBuySaleListingState;
  factory BuySaleListingState.error(final String message) =
      _ErrorBuySaleListingState;
  factory BuySaleListingState.loadedSaledItems({
    required final List<BuyForSaleListingResponseModel> saledItemdList,
  }) = LoadedBuySaleListingState;
}
