import 'package:freezed_annotation/freezed_annotation.dart';

import 'alerts_model.dart';

part 'alert_response_model.freezed.dart';
part 'alert_response_model.g.dart';

@freezed
class AlertResponseModel with _$AlertResponseModel {
  @JsonSerializable()
  const factory AlertResponseModel({
    required List<AlertModel> alertList,
  }) = _AlertResponseModel;
  factory AlertResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AlertResponseModelFromJson(json);
}
