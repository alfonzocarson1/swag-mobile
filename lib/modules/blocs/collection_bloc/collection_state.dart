part of 'collection_bloc.dart';

@freezed
class CollectionState with _$CollectionState {
  CollectionState._();

  factory CollectionState.initial() = _InitialCollectionState;
  factory CollectionState.error(final String message) = _ErrorCollectionState;
  factory CollectionState.loadedCollectionSuccess(
      AddCollectionModel successCollection) = LoadedSuccessCollection;
  factory CollectionState.loadedCollectionDetail(
      ListingForSaleProfileResponseModel listingForSaleProfileResponseModel) = loadCollectionDetail;
  factory CollectionState.loadedCollectionsDetail(
      List<ListingForSaleModel> listingForSaleProfileResponseModel) = LoadAllCollectionsDetail;
  factory CollectionState.removeCollectionSuccess(
      AddCollectionModel addCollectionModel) = _RemoveCollectionSuccess;
  factory CollectionState.loadedCollectionItems({
    required final List<CatalogItemModel> dataCollectionlList,
  }) = LoadedCollectionItemState;
}
