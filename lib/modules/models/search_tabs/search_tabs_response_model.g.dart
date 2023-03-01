// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_tabs_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchTabsResponseModel _$$_SearchTabsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchTabsResponseModel(
      catalogList: (json['catalogList'] as List<dynamic>)
          .map((e) => CatalogItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentList: (json['recentList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$$_SearchTabsResponseModelToJson(
        _$_SearchTabsResponseModel instance) =>
    <String, dynamic>{
      'catalogList': instance.catalogList,
      'recentList': instance.recentList,
      'jobId': instance.jobId,
    };
