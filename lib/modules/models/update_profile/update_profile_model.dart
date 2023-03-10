import 'package:freezed_annotation/freezed_annotation.dart';

import 'addresses_payload_model.dart';

part 'update_profile_model.freezed.dart';
part 'update_profile_model.g.dart';

@freezed
class UpdateProfileModel with _$UpdateProfileModel {
  const factory UpdateProfileModel({
    required final String accountId,
    required final String username,
    required final double listingsRating,
    required final String phoneNumber,
    required final String email,
    List<AddressesPayloadModel>? addresses,
  }) = _UpdateProfileModel;

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileModelFromJson(json);
}
