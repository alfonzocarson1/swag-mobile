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
      condition: json['condition'] as int? ?? defaultInt,
    );

Map<String, dynamic> _$$_SharedPreferenceModelToJson(
        _$_SharedPreferenceModel instance) =>
    <String, dynamic>{
      'isListView': instance.isListView,
      'isForSale': instance.isForSale,
      'sortBy': instance.sortBy,
      'condition': instance.condition,
    };
