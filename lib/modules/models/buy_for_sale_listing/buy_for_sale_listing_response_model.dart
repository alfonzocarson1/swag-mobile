import 'package:freezed_annotation/freezed_annotation.dart';

import 'buy_for_sale_listing_model.dart';

part 'buy_for_sale_listing_response_model.freezed.dart';
part 'buy_for_sale_listing_response_model.g.dart';

@freezed
class BuyForSaleListingResponseModel with _$BuyForSaleListingResponseModel {
  @JsonSerializable()
  const factory BuyForSaleListingResponseModel({
    required final List<BuyForSaleListingModel> saledItemdList,
  }) = _BuyForSaleListingResponseModel;

  factory BuyForSaleListingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BuyForSaleListingResponseModelFromJson(json);
}
