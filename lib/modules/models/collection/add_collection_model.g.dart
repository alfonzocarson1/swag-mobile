// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddCollectionModel _$$_AddCollectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_AddCollectionModel(
      accountId: json['accountId'] as String?,
      collectionItemsAction: json['collectionItemsAction'] as String?,
      deleteReason: json['deleteReason'] as String?,
      profileCollectionItems: (json['profileCollectionItems'] as List<dynamic>?)
          ?.map((e) =>
              AddCollectionItemPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddCollectionModelToJson(
    _$_AddCollectionModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('collectionItemsAction', instance.collectionItemsAction);
  writeNotNull('deleteReason', instance.deleteReason);
  writeNotNull('profileCollectionItems', instance.profileCollectionItems);
  return val;
}
