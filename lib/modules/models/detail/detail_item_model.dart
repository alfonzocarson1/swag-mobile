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
    required final String catalogItemImage,
    required final String catalogItemName,
    required final String catalogItemDescription,
    required final String catalogItemCategoryId,
    required final String released,
    required final dynamic rarityScore,
    @required List<DetailAttributeModel>? attributeItemList,
    @required List<DetailCollectionModel>? myCollection,
    required final int totalMade,
    required final String retail,
    required final String releasedType,
    required final String lastSale,
    required final int numberAvailable,
    @required List<SimilarItemModel>? similarItemList,
  }) = _DetailItemModel;

  factory DetailItemModel.fromJson(Map<String, dynamic> json) =>
      _$DetailItemModelFromJson(json);
}
