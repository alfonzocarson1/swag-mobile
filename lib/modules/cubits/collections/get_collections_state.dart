part of 'get_collections_cubit.dart';

@freezed
class CollectionCubitState with _$CollectionCubitState {
  const factory CollectionCubitState.initial() = _Initial;
  const factory CollectionCubitState.loading(
      {@Default(false) bool isFirstFetch}) = loading_search;

  factory CollectionCubitState.loadedProfileCollections({
    required final List<ListCollectionProfileResponseModel>
        profileCollectionList,
  }) = LoadedCollectionsState;

  factory CollectionCubitState.error(final String message) =
      ErrorCollectionState;
}
