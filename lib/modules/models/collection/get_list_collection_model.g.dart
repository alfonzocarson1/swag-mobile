// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCollectionProfileResponseModel
    _$$_ListCollectionProfileResponseModelFromJson(Map<String, dynamic> json) =>
        _$_ListCollectionProfileResponseModel(
          collectionList: (json['collectionList'] as List<dynamic>)
              .map(
                  (e) => GetCollectionModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ListCollectionProfileResponseModelToJson(
        _$_ListCollectionProfileResponseModel instance) =>
    <String, dynamic>{
      'collectionList': instance.collectionList,
    };
