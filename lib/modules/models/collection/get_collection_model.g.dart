// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCollectionModel _$GetCollectionModelFromJson(Map<String, dynamic> json) =>
    GetCollectionModel(
      catalogItemId: json['catalogItemId'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemImage: json['catalogItemImage'] as String,
      numberAvailable: json['numberAvailable'] as int,
      saleInfo: DetailSaleInfoModel.fromJson(
          json['saleInfo'] as Map<String, dynamic>),
      forSale: json['forSale'] as bool,
      inFavorites: json['inFavorites'] as bool,
      inCollection: json['inCollection'] as bool,
      profileFavoriteItemId: json['profileFavoriteItemId'] as String?,
      collectionItems: (json['collectionItems'] as List<dynamic>?)
          ?.map(
              (e) => DetailCollectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCollectionModelToJson(GetCollectionModel instance) =>
    <String, dynamic>{
      'catalogItemId': instance.catalogItemId,
      'catalogItemName': instance.catalogItemName,
      'catalogItemImage': instance.catalogItemImage,
      'numberAvailable': instance.numberAvailable,
      'saleInfo': instance.saleInfo,
      'forSale': instance.forSale,
      'inFavorites': instance.inFavorites,
      'inCollection': instance.inCollection,
      'profileFavoriteItemId': instance.profileFavoriteItemId,
      'collectionItems': instance.collectionItems,
    };

_$_GetCollectionModel _$$_GetCollectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetCollectionModel(
      catalogItemId: json['catalogItemId'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemImage: json['catalogItemImage'] as String,
      numberAvailable: json['numberAvailable'] as int,
      saleInfo: DetailSaleInfoModel.fromJson(
          json['saleInfo'] as Map<String, dynamic>),
      forSale: json['forSale'] as bool,
      inFavorites: json['inFavorites'] as bool,
      inCollection: json['inCollection'] as bool,
      profileFavoriteItemId: json['profileFavoriteItemId'] as String?,
      collectionItems: (json['collectionItems'] as List<dynamic>?)
          ?.map(
              (e) => DetailCollectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetCollectionModelToJson(
        _$_GetCollectionModel instance) =>
    <String, dynamic>{
      'catalogItemId': instance.catalogItemId,
      'catalogItemName': instance.catalogItemName,
      'catalogItemImage': instance.catalogItemImage,
      'numberAvailable': instance.numberAvailable,
      'saleInfo': instance.saleInfo,
      'forSale': instance.forSale,
      'inFavorites': instance.inFavorites,
      'inCollection': instance.inCollection,
      'profileFavoriteItemId': instance.profileFavoriteItemId,
      'collectionItems': instance.collectionItems,
    };
