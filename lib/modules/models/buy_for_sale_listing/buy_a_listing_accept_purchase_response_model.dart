import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_a_listing_accept_purchase_response_model.freezed.dart';
part 'buy_a_listing_accept_purchase_response_model.g.dart';

@freezed
class AcceptPurchaseResponseModel with _$AcceptPurchaseResponseModel {
  @JsonSerializable()
  const factory AcceptPurchaseResponseModel(
      {final String? channelUrl,
      final String? errorCode,
      final String? errorMessage}) = _AcceptPurchaseResponseModel;

  factory AcceptPurchaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AcceptPurchaseResponseModelFromJson(json);
}
