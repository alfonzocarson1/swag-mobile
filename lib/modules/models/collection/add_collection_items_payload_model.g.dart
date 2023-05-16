// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_collection_items_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCollectionItemPayloadModel _$AddCollectionItemPayloadModelFromJson(
        Map<String, dynamic> json) =>
    AddCollectionItemPayloadModel(
      profileCollectionItemId: json['profileCollectionItemId'] as String?,
      catalogItemId: json['catalogItemId'] as String?,
      purchaseDate: json['purchaseDate'] as String?,
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      itemCondition: json['itemCondition'] as String?,
      itemSource: json['itemSource'] as String?,
    );

Map<String, dynamic> _$AddCollectionItemPayloadModelToJson(
    AddCollectionItemPayloadModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profileCollectionItemId', instance.profileCollectionItemId);
  writeNotNull('catalogItemId', instance.catalogItemId);
  writeNotNull('purchaseDate', instance.purchaseDate);
  writeNotNull('purchasePrice', instance.purchasePrice);
  writeNotNull('itemCondition', instance.itemCondition);
  writeNotNull('itemSource', instance.itemSource);
  return val;
}

_$_AddCollectionItemPayloadModel _$$_AddCollectionItemPayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_AddCollectionItemPayloadModel(
      profileCollectionItemId: json['profileCollectionItemId'] as String?,
      catalogItemId: json['catalogItemId'] as String?,
      purchaseDate: json['purchaseDate'] as String?,
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      itemCondition: json['itemCondition'] as String?,
      itemSource: json['itemSource'] as String?,
    );

Map<String, dynamic> _$$_AddCollectionItemPayloadModelToJson(
        _$_AddCollectionItemPayloadModel instance) =>
    <String, dynamic>{
      'profileCollectionItemId': instance.profileCollectionItemId,
      'catalogItemId': instance.catalogItemId,
      'purchaseDate': instance.purchaseDate,
      'purchasePrice': instance.purchasePrice,
      'itemCondition': instance.itemCondition,
      'itemSource': instance.itemSource,
    };
