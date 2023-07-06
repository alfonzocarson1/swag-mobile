import 'package:freezed_annotation/freezed_annotation.dart';

import 'alert_payload_model.dart';

part 'alerts_model.freezed.dart';
part 'alerts_model.g.dart';

@freezed
class AlertModel with _$AlertModel {
  const AlertModel._();
  @JsonSerializable(includeIfNull: false)
  const factory AlertModel({
    final String? notificationAlertId,
    final String? notificationAlertTitle,
    final String? notificationAlertBody,
    final String? typeNotification,
    required final bool read,
    final AlertPayloadModel? payload,
    final String? timeStamp,
  }) = _AlertModel;

  factory AlertModel.fromJson(Map<String, dynamic> json) =>
      _$AlertModelFromJson(json);
}
