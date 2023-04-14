// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SharedPreferenceModel _$$_SharedPreferenceModelFromJson(
        Map<String, dynamic> json) =>
    _$_SharedPreferenceModel(
      isListView: json['isListView'] as bool? ?? true,
      isForSale: json['isForSale'] as bool? ?? false,
      sortBy: json['sortBy'] as int? ?? defaultInt,
      condition: (json['condition'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      price: (json['price'] as List<dynamic>?)?.map((e) => e as int).toList() ??
          const [],
      releaseDate: (json['releaseDate'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      product:
          (json['product'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [],
      collection: (json['collection'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      theme:
          (json['theme'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      filtersAndSortsSelected:
          json['filtersAndSortsSelected'] as int? ?? defaultInt,
    );

Map<String, dynamic> _$$_SharedPreferenceModelToJson(
        _$_SharedPreferenceModel instance) =>
    <String, dynamic>{
      'isListView': instance.isListView,
      'isForSale': instance.isForSale,
      'sortBy': instance.sortBy,
      'condition': instance.condition,
      'price': instance.price,
      'releaseDate': instance.releaseDate,
      'product': instance.product,
      'collection': instance.collection,
      'theme': instance.theme,
      'type': instance.type,
      'filtersAndSortsSelected': instance.filtersAndSortsSelected,
    };
