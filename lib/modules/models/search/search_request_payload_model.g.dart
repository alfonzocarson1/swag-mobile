// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequestPayloadModel _$SearchRequestPayloadModelFromJson(
        Map<String, dynamic> json) =>
    SearchRequestPayloadModel(
      filters: FilterModel.fromJson(json['filters'] as Map<String, dynamic>),
      searchParams: (json['searchParams'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pageSize: json['pageSize'] as int,
      categoryId: json['categoryId'] as String?,
      whatsHotFlag: json['whatsHotFlag'] as bool?,
      staffPicksFlag: json['staffPicksFlag'] as bool?,
      unicornFlag: json['unicornFlag'] as bool?,
    );

Map<String, dynamic> _$SearchRequestPayloadModelToJson(
        SearchRequestPayloadModel instance) =>
    <String, dynamic>{
      'filters': instance.filters,
      'searchParams': instance.searchParams,
      'pageSize': instance.pageSize,
      'categoryId': instance.categoryId,
      'whatsHotFlag': instance.whatsHotFlag,
      'staffPicksFlag': instance.staffPicksFlag,
      'unicornFlag': instance.unicornFlag,
    };

_$_SearchRequestPayloadModel _$$_SearchRequestPayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRequestPayloadModel(
      filters: FilterModel.fromJson(json['filters'] as Map<String, dynamic>),
      searchParams: (json['searchParams'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
      pageSize: json['pageSize'] as int? ?? defaultPageSize,
      categoryId: json['categoryId'] as String? ?? null,
      whatsHotFlag: json['whatsHotFlag'] as bool? ?? false,
      staffPicksFlag: json['staffPicksFlag'] as bool? ?? false,
      unicornFlag: json['unicornFlag'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SearchRequestPayloadModelToJson(
        _$_SearchRequestPayloadModel instance) =>
    <String, dynamic>{
      'filters': instance.filters,
      'searchParams': instance.searchParams,
      'pageSize': instance.pageSize,
      'categoryId': instance.categoryId,
      'whatsHotFlag': instance.whatsHotFlag,
      'staffPicksFlag': instance.staffPicksFlag,
      'unicornFlag': instance.unicornFlag,
    };
