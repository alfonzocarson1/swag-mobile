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
      saleInfo: DetailSaleInfoModel.fromJson(
          json['saleInfo'] as Map<String, dynamic>),
      forSale: json['forSale'] as bool,
      inFavorites: json['inFavorites'] as bool,
      inCollection: json['inCollection'] as bool,
      collectionItems: (json['collectionItems'] as List<dynamic>?)
          ?.map(
              (e) => DetailCollectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'collectionItems': instance.collectionItems,
    };
