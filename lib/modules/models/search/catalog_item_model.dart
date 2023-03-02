import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item_model.freezed.dart';
part 'catalog_item_model.g.dart';

@freezed
class CatalogItemModel with _$CatalogItemModel {
  @JsonSerializable()
  const factory CatalogItemModel({
    required final String catalogItemId,
    required final String catalogItemName,
    required final String catalogItemImage,
    required final int numberAvailable,
    required final String saleInfo,
    required final bool forSale,
    required final bool inFavorites,
    required final bool inCollection,
  }) = _CatalogItemModel;

  factory CatalogItemModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemModelFromJson(json);
}
