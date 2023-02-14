// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterModel _$$_FilterModelFromJson(Map<String, dynamic> json) =>
    _$_FilterModel(
      sortBy: json['sortBy'] as int? ?? 0,
      collections: json['collections'] as String? ?? defaultString,
      conditions: json['conditions'] as String? ?? defaultString,
      releaseYears: (json['releaseYears'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      rarityScore: json['rarityScore'] as String? ?? defaultString,
    );

Map<String, dynamic> _$$_FilterModelToJson(_$_FilterModel instance) =>
    <String, dynamic>{
      'sortBy': instance.sortBy,
      'collections': instance.collections,
      'conditions': instance.conditions,
      'releaseYears': instance.releaseYears,
      'rarityScore': instance.rarityScore,
    };
