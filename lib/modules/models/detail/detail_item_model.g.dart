// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailItemModel _$$_DetailItemModelFromJson(Map<String, dynamic> json) =>
    _$_DetailItemModel(
      catalogItemId: json['catalogItemId'] as String,
      catalogItemImage: json['catalogItemImage'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemDescription: json['catalogItemDescription'] as String,
      catalogItemCategoryId: json['catalogItemCategoryId'] as String,
      released: json['released'] as String,
      rarityScore: json['rarityScore'],
      sale: json['sale'] as bool,
      attributeItemList: (json['attributeItemList'] as List<dynamic>?)
          ?.map((e) => DetailAttributeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      myCollection: (json['myCollection'] as List<dynamic>?)
          ?.map(
              (e) => DetailCollectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalMade: json['totalMade'] as int,
      retail: json['retail'] as String,
      releasedType: json['releasedType'] as String,
      lastSale: json['lastSale'] as String,
      numberAvailable: json['numberAvailable'] as int,
      similarItemList: (json['similarItemList'] as List<dynamic>?)
          ?.map((e) => SimilarItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DetailItemModelToJson(_$_DetailItemModel instance) =>
    <String, dynamic>{
      'catalogItemId': instance.catalogItemId,
      'catalogItemImage': instance.catalogItemImage,
      'catalogItemName': instance.catalogItemName,
      'catalogItemDescription': instance.catalogItemDescription,
      'catalogItemCategoryId': instance.catalogItemCategoryId,
      'released': instance.released,
      'rarityScore': instance.rarityScore,
      'sale': instance.sale,
      'attributeItemList': instance.attributeItemList,
      'myCollection': instance.myCollection,
      'totalMade': instance.totalMade,
      'retail': instance.retail,
      'releasedType': instance.releasedType,
      'lastSale': instance.lastSale,
      'numberAvailable': instance.numberAvailable,
      'similarItemList': instance.similarItemList,
    };
