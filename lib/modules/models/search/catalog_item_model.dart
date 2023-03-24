import 'package:freezed_annotation/freezed_annotation.dart';

import '../detail/detail_collection_model.dart';
import '../detail/detail_sale_info_model.dart';

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
    required final DetailSaleInfoModel saleInfo,
    required final bool forSale,
    required final bool inFavorites,
    required final bool inCollection,
    List<DetailCollectionModel>? collectionItems,
  }) = _CatalogItemModel;

  factory CatalogItemModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemModelFromJson(json);
}
