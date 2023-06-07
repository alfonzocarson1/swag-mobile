// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteItemModel _$$_FavoriteItemModelFromJson(Map<String, dynamic> json) =>
    _$_FavoriteItemModel(
      profileFavoriteItemId: json['profileFavoriteItemId'] as String?,
      catalogItemId: json['catalogItemId'] as String?,
    );

Map<String, dynamic> _$$_FavoriteItemModelToJson(
    _$_FavoriteItemModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profileFavoriteItemId', instance.profileFavoriteItemId);
  writeNotNull('catalogItemId', instance.catalogItemId);
  return val;
}
