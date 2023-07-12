import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_payload_model.freezed.dart';
part 'alert_payload_model.g.dart';

@freezed
class AlertPayloadModel with _$AlertPayloadModel {
  const AlertPayloadModel._();
  @JsonSerializable(includeIfNull: false)
  const factory AlertPayloadModel({
    final String? accountId,
    final String? userName,
    final String? itemName,
    final String? productItemId,
    final String? avatar,
    final String? listingImageUrl,
    final int? dateItemShipped,
  }) = _AlertPayloadModel;

  factory AlertPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$AlertPayloadModelFromJson(json);
}
