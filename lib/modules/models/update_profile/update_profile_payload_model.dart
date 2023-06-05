import 'package:freezed_annotation/freezed_annotation.dart';

import 'addresses_payload_model.dart';

part 'update_profile_payload_model.freezed.dart';
part 'update_profile_payload_model.g.dart';

@freezed
class UpdateProfilePayloadModel with _$UpdateProfilePayloadModel {
@JsonSerializable(includeIfNull: false)
  const factory UpdateProfilePayloadModel({
    final String? accountId,
    final String? phoneNumber,
    final String? email,
    final String? userName,
    final String? useAvatar,
    List<AddressesPayloadModel>? addresses,
  }) = _UpdateProfilePayloadModel;

  factory UpdateProfilePayloadModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfilePayloadModelFromJson(json);
}
