// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListExploreItemModel _$$_ListExploreItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListExploreItemModel(
      exploreList: (json['exploreList'] as List<dynamic>)
          .map((e) => CatalogItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListExploreItemModelToJson(
        _$_ListExploreItemModel instance) =>
    <String, dynamic>{
      'exploreList': instance.exploreList,
    };
