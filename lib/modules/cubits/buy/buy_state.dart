part of 'buy_cubit.dart';

@freezed
class BuyStateCubit with _$BuyStateCubit {
  const factory BuyStateCubit.initial() = _Initial;
  const factory BuyStateCubit.loading({@Default(false) bool isFirstFetch}) =
      loading_page;

  factory BuyStateCubit.loadedListDetailItem(
      BuyForSaleListingModel detaItemlList) = LoadedListDetailItemState;

  factory BuyStateCubit.error(final String message) = ErrorBuyStateCubit;
}
