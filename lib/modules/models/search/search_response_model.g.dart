// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponseModel _$$_SearchResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchResponseModel(
      catalogList: (json['catalogList'] as List<dynamic>)
          .map((e) => CatalogItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentList: (json['recentList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$$_SearchResponseModelToJson(
        _$_SearchResponseModel instance) =>
    <String, dynamic>{
      'catalogList': instance.catalogList,
      'recentList': instance.recentList,
      'jobId': instance.jobId,
    };
