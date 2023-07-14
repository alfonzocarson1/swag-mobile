part of 'get_sold_cubit.dart';

@freezed
class SoldCubitState with _$SoldCubitState {
  const factory SoldCubitState.initial() = _Initial;
  const factory SoldCubitState.loading({@Default(false) bool isFirstFetch}) =
      loading_search;

  factory SoldCubitState.loadedSoldItems({
    required final List<ProductItemSold> dataSoldList,
  }) = LoadedSoldItemState;

  factory SoldCubitState.loadedSoldDetailItem(
    ProductItemSold dataSoldDetail,
  ) = LoadedSoldDetailItemState;

  factory SoldCubitState.error(final String message) = ErrorSoldState;
}
