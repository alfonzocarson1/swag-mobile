import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_payload_model.freezed.dart';
part 'create_account_payload_model.g.dart';

@freezed
class CreateAccountPayloadModel with _$CreateAccountPayloadModel {
  @JsonSerializable()
  const factory CreateAccountPayloadModel({
    required final String email,
    required final String phoneNumber,
    required final String password,
    required final String userName,
    required final bool termsOfServiceAccepted,
    required final String deviceId,
  }) = _CreateAccountPayloadModel;

  factory CreateAccountPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountPayloadModelFromJson(json);
}
