// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesHistoryModel _$$_SalesHistoryModelFromJson(Map<String, dynamic> json) =>
    _$_SalesHistoryModel(
      salesPriceHistoryId: json['salesPriceHistoryId'] as String,
      productItemId: json['productItemId'] as String? ?? 'productItemId Null',
      productItemName: json['productItemName'] as String,
      productItemPrice: (json['productItemPrice'] as num).toDouble(),
      productItemImage:
          json['productItemImage'] as String? ?? 'productItemImage Null',
      lastSale: (json['lastSale'] as num).toDouble(),
      condition: json['condition'] as String,
      catalogItemId: json['catalogItemId'] as String? ?? 'catalogItemId Null',
      profileCollectionItemId: json['profileCollectionItemId'] as String? ??
          'profileCollectionItemId Null',
      sku: json['sku'] as String? ?? 'sku Null',
      updatedDate: json['updatedDate'] as String,
      priority: $enumDecodeNullable(_$PriorityEnumMap, json['priority']) ??
          Priority.defaul,
    );

Map<String, dynamic> _$$_SalesHistoryModelToJson(
        _$_SalesHistoryModel instance) =>
    <String, dynamic>{
      'salesPriceHistoryId': instance.salesPriceHistoryId,
      'productItemId': instance.productItemId,
      'productItemName': instance.productItemName,
      'productItemPrice': instance.productItemPrice,
      'productItemImage': instance.productItemImage,
      'lastSale': instance.lastSale,
      'condition': instance.condition,
      'catalogItemId': instance.catalogItemId,
      'profileCollectionItemId': instance.profileCollectionItemId,
      'sku': instance.sku,
      'updatedDate': instance.updatedDate,
      'priority': _$PriorityEnumMap[instance.priority]!,
    };

const _$PriorityEnumMap = {
  Priority.first: 'first',
  Priority.second: 'second',
  Priority.third: 'third',
  Priority.defaul: 'defaul',
};
