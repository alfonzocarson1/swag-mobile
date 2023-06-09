import 'package:freezed_annotation/freezed_annotation.dart';

part 'addresses_payload_model.freezed.dart';
part 'addresses_payload_model.g.dart';

@freezed
class AddressesPayloadModel with _$AddressesPayloadModel {
  @JsonSerializable(includeIfNull: false)
  const factory AddressesPayloadModel({
    final String? addressId,
    final String? addressType,
    final String? firstName,
    final String? lastName,
    final String? country,
    final String? address1,
    final String? address2,
    final String? city,
    final String? state,
    final String? postalCode,
  }) = _AddressesPayloadModel;

  factory AddressesPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$AddressesPayloadModelFromJson(json);
}
