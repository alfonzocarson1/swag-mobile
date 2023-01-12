// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogItemModel _$$_CatalogItemModelFromJson(Map<String, dynamic> json) =>
    _$_CatalogItemModel(
      catalogItemId: json['catalogItemId'] as String,
      image: json['image'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemDescription: json['catalogItemDescription'] as String,
      catalogItemCollections: json['catalogItemCollections'] as String,
      catalogItemCategoryId: json['catalogItemCategoryId'] as String,
      released: json['released'] as String,
      totalMade: json['totalMade'] as String,
      retail: json['retail'] as String,
      lastSale: json['lastSale'] as String,
      numberAvailable: json['numberAvailable'] as String,
      sku: json['sku'] as String,
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$$_CatalogItemModelToJson(_$_CatalogItemModel instance) =>
    <String, dynamic>{
      'catalogItemId': instance.catalogItemId,
      'image': instance.image,
      'catalogItemName': instance.catalogItemName,
      'catalogItemDescription': instance.catalogItemDescription,
      'catalogItemCollections': instance.catalogItemCollections,
      'catalogItemCategoryId': instance.catalogItemCategoryId,
      'released': instance.released,
      'totalMade': instance.totalMade,
      'retail': instance.retail,
      'lastSale': instance.lastSale,
      'numberAvailable': instance.numberAvailable,
      'sku': instance.sku,
      'jobId': instance.jobId,
    };
