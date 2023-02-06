part of 'collection_bloc.dart';

@freezed
class CollectionState with _$CollectionState {
  CollectionState._();

  factory CollectionState.initial() = _InitialCollectionState;
  factory CollectionState.error(final String message) = _ErrorCollectionState;
  factory CollectionState.loadedCollectionItems({
    required final List<CollectionItemModel> dataCollectionlList,
  }) = LoadedCollectionItemState;
}
