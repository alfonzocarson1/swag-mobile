// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExploreRequestPayloadModel _$$_ExploreRequestPayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExploreRequestPayloadModel(
      filters: json['filters'] ?? const {},
      pageSize: json['pageSize'] as int? ?? 8,
      categoryId: json['categoryId'] as String? ?? null,
      whatsHotFlag: json['whatsHotFlag'] as bool?,
      staffPicksFlag: json['staffPicksFlag'] as bool?,
      unicornFlag: json['unicornFlag'] as bool?,
    );

Map<String, dynamic> _$$_ExploreRequestPayloadModelToJson(
    _$_ExploreRequestPayloadModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filters', instance.filters);
  writeNotNull('pageSize', instance.pageSize);
  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('whatsHotFlag', instance.whatsHotFlag);
  writeNotNull('staffPicksFlag', instance.staffPicksFlag);
  writeNotNull('unicornFlag', instance.unicornFlag);
  return val;
}
