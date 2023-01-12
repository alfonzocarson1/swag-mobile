import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_item_model.freezed.dart';
part 'catalog_item_model.g.dart';

@freezed
class CatalogItemModel with _$CatalogItemModel {
  @JsonSerializable()
  const factory CatalogItemModel({
    required final String catalogItemId,
    required final String image,
    required final String catalogItemName,
    required final String catalogItemDescription,
    required final String catalogItemCollections,
    required final String catalogItemCategoryId,
    required final String released,
    required final String totalMade,
    required final String retail,
    required final String lastSale,
    required final String numberAvailable,
    required final String sku,
    final String? jobId,
  }) = _CatalogItemModel;

  factory CatalogItemModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemModelFromJson(json);
}
