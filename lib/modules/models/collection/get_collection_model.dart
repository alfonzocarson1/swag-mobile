import 'package:freezed_annotation/freezed_annotation.dart';

import '../detail/detail_collection_model.dart';
import '../detail/detail_sale_info_model.dart';

part 'get_collection_model.freezed.dart';
part 'get_collection_model.g.dart';

@freezed
class GetCollectionModel with _$GetCollectionModel {
  @JsonSerializable()
  const factory GetCollectionModel({
    required final String catalogItemId,
    required final String catalogItemName,
    required final String catalogItemImage,
    required final int numberAvailable,
    required final DetailSaleInfoModel saleInfo,
    required final bool forSale,
    required final bool inFavorites,
    required final bool inCollection,
    final String? profileFavoriteItemId,
    List<DetailCollectionModel>? collectionItems,
  }) = _GetCollectionModel;

  factory GetCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$GetCollectionModelFromJson(json);
}
