import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_purchase_request_model.freezed.dart';
part 'cancel_purchase_request_model.g.dart';

@freezed
class CancelPurchaseRequestModel with _$CancelPurchaseRequestModel {
  @JsonSerializable(includeIfNull: false)
  const factory CancelPurchaseRequestModel({
    final String? productItemId,
    final String? listingChatId,
    final String? cancelReason,
    final bool? received,
  }) = _CancelPurchaseRequestModel;

  factory CancelPurchaseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CancelPurchaseRequestModelFromJson(json);
}
