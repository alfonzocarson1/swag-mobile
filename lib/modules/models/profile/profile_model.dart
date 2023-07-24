import 'package:freezed_annotation/freezed_annotation.dart';

import '../update_profile/addresses_payload_model.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  @JsonSerializable()
  const factory ProfileModel({
    required final String accountId,
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
    final bool? kycverified,
    final String? firstName,
    final String? lastName

  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
