// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    );

Map<String, dynamic> _$$_SearchRequestPayloadModelToJson(
        _$_SearchRequestPayloadModel instance) =>
    <String, dynamic>{
      'filters': instance.filters,
      'searchParams': instance.searchParams,
      'pageSize': instance.pageSize,
      'categoryId': instance.categoryId,
    };
