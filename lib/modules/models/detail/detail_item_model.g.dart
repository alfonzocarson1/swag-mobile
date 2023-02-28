// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailItemModel _$$_DetailItemModelFromJson(Map<String, dynamic> json) =>
    _$_DetailItemModel(
      catalogItemId: json['catalogItemId'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemDescription: json['catalogItemDescription'] as String,
      catalogItemDescriptionShort:
          json['catalogItemDescriptionShort'] as String,
      catalogItemImage: json['catalogItemImage'] as String,
      catalogItemCollection: json['catalogItemCollection'] as String,
      catalogItemCategoryId: json['catalogItemCategoryId'] as String,
      released: json['released'] as String,
      releasedType: json['releasedType'] as String,
      attributeItemList: (json['attributeItemList'] as List<dynamic>?)
          ?.map((e) => DetailAttributeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      myCollection: (json['myCollection'] as List<dynamic>?)
          ?.map(
              (e) => DetailCollectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalMade: json['totalMade'] as int,
      retail: json['retail'] as String,
      numberAvailable: json['numberAvailable'] as int,
      rarityScore: json['rarityScore'] as String,
      saleInfo: json['saleInfo'] as String,
      forSale: json['forSale'] as bool,
      inFavorites: json['inFavorites'] as bool,
      inCollection: json['inCollection'] as bool,
      condition: json['condition'] as String,
    );

Map<String, dynamic> _$$_DetailItemModelToJson(_$_DetailItemModel instance) =>
    <String, dynamic>{
      'catalogItemId': instance.catalogItemId,
      'catalogItemName': instance.catalogItemName,
      'catalogItemDescription': instance.catalogItemDescription,
      'catalogItemDescriptionShort': instance.catalogItemDescriptionShort,
      'catalogItemImage': instance.catalogItemImage,
      'catalogItemCollection': instance.catalogItemCollection,
      'catalogItemCategoryId': instance.catalogItemCategoryId,
      'released': instance.released,
      'releasedType': instance.releasedType,
      'attributeItemList': instance.attributeItemList,
      'myCollection': instance.myCollection,
      'totalMade': instance.totalMade,
      'retail': instance.retail,
      'numberAvailable': instance.numberAvailable,
      'rarityScore': instance.rarityScore,
      'saleInfo': instance.saleInfo,
      'forSale': instance.forSale,
      'inFavorites': instance.inFavorites,
      'inCollection': instance.inCollection,
      'condition': instance.condition,
    };
