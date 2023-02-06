import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_favorite_model.freezed.dart';
part 'profile_favorite_model.g.dart';

@freezed
class FavoriteItemModel with _$FavoriteItemModel {
  @JsonSerializable()
  const factory FavoriteItemModel({
    required final String catalogItemId,
    required final String image,
    required final String catalogItemName,
    required final String catalogItemDescription,
    required final String catalogItemCollections,
    required final String catalogItemCategoryId,
    required final String released,
    required final int totalMade,
    required final String retail,
    required final bool sale,
    required final String lastSale,
    required final int numberAvailable,
    required final String sku,
    final String? jobId,
  }) = _FavoriteItemModel;

  factory FavoriteItemModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteItemModelFromJson(json);
}
