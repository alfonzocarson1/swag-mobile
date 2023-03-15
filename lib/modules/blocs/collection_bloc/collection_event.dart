part of 'collection_bloc.dart';

@freezed
class CollectionEvent with _$CollectionEvent {
  const factory CollectionEvent.getCollectionItem() = _GetCollectionItem;

  const factory CollectionEvent.addCollection(AddCollectionModel model) =
      _CollectionEvent;
}
