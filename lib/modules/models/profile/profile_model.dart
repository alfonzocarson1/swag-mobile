import 'package:freezed_annotation/freezed_annotation.dart';

import '../update_profile/addresses_payload_model.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  @JsonSerializable()
  const factory ProfileModel(
      {required final String accountId,
      required final String username,
      required final String useAvatar,
      final String? avatarUrl,
      required final double listingsRating,
      required final String phoneNumber,
      required final String email,
      List<AddressesPayloadModel>? addresses,
      required final double collectionValue,
      required final bool accountVerified,
      required final bool emailVerified,
      final bool? hasActiveSubscription,
      final bool? hasUsedFreeTrial,
      String? kycStatus,
      final String? firstName,
      final String? lastName,
      final String? countryCode}) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey("kycStatus")) {
      json["kycStatus"] =
          (json["kycverified"] as bool?) == true ? "VERIFIED" : "UNVERIFIED";
    }
    return _$ProfileModelFromJson(json);
  }

  bool get kycverified => kycStatus == "VERIFIED";
}
