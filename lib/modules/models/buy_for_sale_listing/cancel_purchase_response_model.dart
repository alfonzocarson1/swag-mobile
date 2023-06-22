import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_purchase_response_model.freezed.dart';
part 'cancel_purchase_response_model.g.dart';

@freezed
class CancelPurchaseResponseModel with _$CancelPurchaseResponseModel {
  @JsonSerializable()
  const factory CancelPurchaseResponseModel({
    final bool? response,
    final String? shortMessage,
    final String? listingStatus,
  }) = _CancelPurchaseResponseModel;

  factory CancelPurchaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CancelPurchaseResponseModelFromJson(json);
}
