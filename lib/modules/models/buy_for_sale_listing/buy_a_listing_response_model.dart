import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_a_listing_response_model.freezed.dart';
part 'buy_a_listing_response_model.g.dart';

@freezed
class BuyASaleListingResponseModel with _$BuyASaleListingResponseModel {
  @JsonSerializable(includeIfNull: false)
  const factory BuyASaleListingResponseModel({
    @Default(false) final bool response,
    final String? shortMessage,
    final String? channelUrl,
    final String? errorCode,
    final String? errorMessage,
  }) = _BuyASaleListingResponseModel;

  factory BuyASaleListingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BuyASaleListingResponseModelFromJson(json);
}
