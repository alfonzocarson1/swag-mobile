// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteModel _$$_FavoriteModelFromJson(Map<String, dynamic> json) =>
    _$_FavoriteModel(
      favoritesItemAction: json['favoritesItemAction'] as String?,
      accountId: json['accountId'] as String?,
      profileFavoriteItems: (json['profileFavoriteItems'] as List<dynamic>?)
          ?.map((e) => FavoriteItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FavoriteModelToJson(_$_FavoriteModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('favoritesItemAction', instance.favoritesItemAction);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('profileFavoriteItems', instance.profileFavoriteItems);
  return val;
}
