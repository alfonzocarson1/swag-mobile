// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchValues _$$_SearchValuesFromJson(Map<String, dynamic> json) =>
    _$_SearchValues(
      forSale: json['forSale'] as bool?,
      sortBy: json['sortBy'] as int?,
      collection: json['collection'] as String?,
      productType: (json['productType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: json['type'] as String?,
      theme:
          (json['theme'] as List<dynamic>?)?.map((e) => e as String).toList(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      releaseYears: (json['releaseYears'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      priceRanges: (json['priceRanges'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_SearchValuesToJson(_$_SearchValues instance) =>
    <String, dynamic>{
      'forSale': instance.forSale,
      'sortBy': instance.sortBy,
      'collection': instance.collection,
      'productType': instance.productType,
      'type': instance.type,
      'theme': instance.theme,
      'conditions': instance.conditions,
      'releaseYears': instance.releaseYears,
      'priceRanges': instance.priceRanges,
    };
