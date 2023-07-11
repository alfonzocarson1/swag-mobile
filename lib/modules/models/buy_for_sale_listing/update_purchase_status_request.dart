import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_purchase_status_request.freezed.dart';
part 'update_purchase_status_request.g.dart';

@freezed
class UpdatePurchaseStatusRequestModel with _$UpdatePurchaseStatusRequestModel {
  @JsonSerializable(includeIfNull: false)
  const factory UpdatePurchaseStatusRequestModel(
      {final String? listingStatus,
      final String? productItemId,
      final String? listingChatId,
      final String? numberTracking}) = _UpdatePurchaseStatusRequestModel;

  factory UpdatePurchaseStatusRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePurchaseStatusRequestModelFromJson(json);
}
