// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListingItemModel _$$_ListingItemModelFromJson(Map<String, dynamic> json) =>
    _$_ListingItemModel(
      catalogItemId: json['catalogItemId'] as String,
      image: json['image'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemDescription: json['catalogItemDescription'] as String,
      catalogItemCollections: json['catalogItemCollections'] as String,
      catalogItemCategoryId: json['catalogItemCategoryId'] as String,
      released: json['released'] as String,
      totalMade: json['totalMade'] as int,
      retail: json['retail'] as String,
      sale: json['sale'] as bool,
      lastSale: json['lastSale'] as String,
      numberAvailable: json['numberAvailable'] as int,
      sku: json['sku'] as String,
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$$_ListingItemModelToJson(_$_ListingItemModel instance) =>
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
      'sale': instance.sale,
      'lastSale': instance.lastSale,
      'numberAvailable': instance.numberAvailable,
      'sku': instance.sku,
      'jobId': instance.jobId,
    };
