part of 'buy_cubit.dart';

@freezed
class BuyStateCubit with _$BuyStateCubit {
  const factory BuyStateCubit.initial() = Initial;
  const factory BuyStateCubit.loading({@Default(false) bool isFirstFetch}) =
      loading_page;

  factory BuyStateCubit.updateItem() = UpdateItem;

  factory BuyStateCubit.loadedListDetailItem(
      BuyForSaleListingModel detaItemlList) = LoadedListDetailItemState;

  factory BuyStateCubit.loadedBuyLisItem(
      BuyASaleListingResponseModel buyItemlList) = LoadedBuyListItemState;

  factory BuyStateCubit.error(final String message) = ErrorBuyStateCubit;
}
