import 'package:freezed_annotation/freezed_annotation.dart';

import 'listing_for_sale_model.dart';

part 'profile_listing_model.freezed.dart';
part 'profile_listing_model.g.dart';

@freezed
@JsonSerializable()
class ListingForSaleProfileResponseModel
    with _$ListingForSaleProfileResponseModel {
  const factory ListingForSaleProfileResponseModel({
    required List<ListingForSaleModel> listForSale,
  }) = _ListingForSaleProfileResponseModel;
  factory ListingForSaleProfileResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ListingForSaleProfileResponseModelFromJson(json);
}
