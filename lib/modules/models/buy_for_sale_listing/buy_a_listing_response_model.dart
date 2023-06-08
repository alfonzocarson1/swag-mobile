import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_a_listing_response_model.freezed.dart';
part 'buy_a_listing_response_model.g.dart';

@freezed
class BuyASaleListingResponseModel with _$BuyASaleListingResponseModel {
  @JsonSerializable()
  const factory BuyASaleListingResponseModel({
    required final bool response,
    required final String shortMessage,
  }) = _BuyASaleListingResponseModel;

  factory BuyASaleListingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BuyASaleListingResponseModelFromJson(json);
}
