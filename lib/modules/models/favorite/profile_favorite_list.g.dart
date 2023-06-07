// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_favorite_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListFavoriteProfileResponseModel
    _$$_ListFavoriteProfileResponseModelFromJson(Map<String, dynamic> json) =>
        _$_ListFavoriteProfileResponseModel(
          favoriteList: (json['favoriteList'] as List<dynamic>)
              .map((e) => DetailItemModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ListFavoriteProfileResponseModelToJson(
        _$_ListFavoriteProfileResponseModel instance) =>
    <String, dynamic>{
      'favoriteList': instance.favoriteList,
    };
