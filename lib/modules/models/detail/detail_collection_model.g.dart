// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailCollectionModel _$DetailCollectionModelFromJson(
        Map<String, dynamic> json) =>
    DetailCollectionModel(
      profileCollectionItemId: json['profileCollectionItemId'] as String,
      catalogItemId: json['catalogItemId'] as String,
      purchaseDate: json['purchaseDate'] as String,
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      itemCondition: json['itemCondition'] as String,
      itemSource: json['itemSource'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DetailCollectionModelToJson(
        DetailCollectionModel instance) =>
    <String, dynamic>{
      'profileCollectionItemId': instance.profileCollectionItemId,
      'catalogItemId': instance.catalogItemId,
      'purchaseDate': instance.purchaseDate,
      'purchasePrice': instance.purchasePrice,
      'itemCondition': instance.itemCondition,
      'itemSource': instance.itemSource,
      'description': instance.description,
    };

_$_DetailCollectionModel _$$_DetailCollectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailCollectionModel(
      profileCollectionItemId: json['profileCollectionItemId'] as String,
      catalogItemId: json['catalogItemId'] as String,
      purchaseDate: json['purchaseDate'] as String,
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      itemCondition: json['itemCondition'] as String,
      itemSource: json['itemSource'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_DetailCollectionModelToJson(
        _$_DetailCollectionModel instance) =>
    <String, dynamic>{
      'profileCollectionItemId': instance.profileCollectionItemId,
      'catalogItemId': instance.catalogItemId,
      'purchaseDate': instance.purchaseDate,
      'purchasePrice': instance.purchasePrice,
      'itemCondition': instance.itemCondition,
      'itemSource': instance.itemSource,
      'description': instance.description,
    };
