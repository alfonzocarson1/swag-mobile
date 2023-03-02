// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogItemModel _$$_CatalogItemModelFromJson(Map<String, dynamic> json) =>
    _$_CatalogItemModel(
      catalogItemId: json['catalogItemId'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemImage: json['catalogItemImage'] as String,
      numberAvailable: json['numberAvailable'] as int,
      saleInfo: json['saleInfo'] as String,
      forSale: json['forSale'] as bool,
      inFavorites: json['inFavorites'] as bool,
      inCollection: json['inCollection'] as bool,
    );

Map<String, dynamic> _$$_CatalogItemModelToJson(_$_CatalogItemModel instance) =>
    <String, dynamic>{
      'catalogItemId': instance.catalogItemId,
      'catalogItemName': instance.catalogItemName,
      'catalogItemImage': instance.catalogItemImage,
      'numberAvailable': instance.numberAvailable,
      'saleInfo': instance.saleInfo,
      'forSale': instance.forSale,
      'inFavorites': instance.inFavorites,
      'inCollection': instance.inCollection,
    };
