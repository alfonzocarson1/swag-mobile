import 'package:freezed_annotation/freezed_annotation.dart';

import 'favorite_item_model.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  @JsonSerializable(includeIfNull: false)
  const factory FavoriteModel({
    final String? favoritesItemAction,
    final String? accountId,
    List<FavoriteItemModel>? profileFavoriteItems,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}
