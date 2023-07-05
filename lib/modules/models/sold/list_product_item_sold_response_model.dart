import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/sold/product_item_sold.dart';

part 'list_product_item_sold_response_model.freezed.dart';

part 'list_product_item_sold_response_model.g.dart';

@freezed
class ListProductItemsSoldResponseModel
    with _$ListProductItemsSoldResponseModel {
  @JsonSerializable()
  const factory ListProductItemsSoldResponseModel({
    required List<ProductItemSold> productItemsSold,
  }) = _ListProductItemsSoldResponseModel;

  factory ListProductItemsSoldResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ListProductItemsSoldResponseModelFromJson(json);
}
