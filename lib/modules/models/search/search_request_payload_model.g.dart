// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchRequestPayloadModel _$$_SearchRequestPayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRequestPayloadModel(
      filters: (json['filters'] as List<dynamic>?)
              ?.map((e) => FilterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      searchParams: json['searchParams'] as String? ?? defaultString,
      pageSize: json['pageSize'] as int? ?? defaultPageSize,
      categoryId: json['categoryId'] as String,
    );

Map<String, dynamic> _$$_SearchRequestPayloadModelToJson(
        _$_SearchRequestPayloadModel instance) =>
    <String, dynamic>{
      'filters': instance.filters,
      'searchParams': instance.searchParams,
      'pageSize': instance.pageSize,
      'categoryId': instance.categoryId,
    };
