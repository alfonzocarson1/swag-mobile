part of 'catalog_detail_cubit.dart';

@freezed
class CatalogDetailState with _$CatalogDetailState {
  const factory CatalogDetailState.initial() = _Initial;
  const factory CatalogDetailState.willBeNotified() = _WillBeNotified;

  factory CatalogDetailState.loadedSaledItems({
    required final List<BuyForSaleListingResponseModel> saledItemdList,
  }) = LoadedBuyCatalogDetailState;

  factory CatalogDetailState.error(final String message) =
      ErrorCatalogDetailState;
}
