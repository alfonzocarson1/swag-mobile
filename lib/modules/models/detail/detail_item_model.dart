import 'package:freezed_annotation/freezed_annotation.dart';

import 'detail_attribute_model.dart';
import 'detail_collection_model.dart';
import 'similar_item_model.dart';

part 'detail_item_model.freezed.dart';
part 'detail_item_model.g.dart';

@freezed
class DetailItemModel with _$DetailItemModel {
  @JsonSerializable()
  const factory DetailItemModel({
    required final String catalogItemId,
    required final String catalogItemName,
    required final String catalogItemDescription,
    required final String catalogItemDescriptionShort,
    required final String catalogItemImage,
    required final String catalogItemCollection,
    required final String catalogItemCategoryId,
    required final String released,
    required final String releasedType,
    @required List<DetailAttributeModel>? attributeItemList,
    @required List<DetailCollectionModel>? myCollection,
    required final int totalMade,
    required final String retail,
    required final int numberAvailable,
    required final String rarityScore,
    required final String saleInfo,
    required final bool forSale,
    required final bool inFavorites,
    required final bool inCollection,
    required final String condition,
  }) = _DetailItemModel;

  factory DetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$DetailItemModelFromJson(json);
}
