import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_collection_model.freezed.dart';
part 'profile_collection_model.g.dart';

@freezed
class CollectionItemModel with _$CollectionItemModel {
  @JsonSerializable()
  const factory CollectionItemModel({
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
  }) = _CollectionItemModel;

  factory CollectionItemModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionItemModelFromJson(json);
}
