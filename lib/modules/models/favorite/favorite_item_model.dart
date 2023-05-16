import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_item_model.freezed.dart';
part 'favorite_item_model.g.dart';

@freezed
@JsonSerializable(includeIfNull: false)
class FavoriteItemModel with _$FavoriteItemModel {
  const factory FavoriteItemModel({
    final String? profileFavoriteItemId,
    final String? catalogItemId,
  }) = _FavoriteItemModel;

  factory FavoriteItemModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteItemModelFromJson(json);
}
