import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';

import '../settings/peer_to_peer_payments_model.dart';

part 'public_profile.freezed.dart';
part 'public_profile.g.dart';

@freezed
class PublicProfile with _$PublicProfile {
  const factory PublicProfile({
    String? accountId,
    String? username,
    String? useAvatar,
    String? avatarUrl,
    double? listingsRating,
    PeerToPeerPaymentsModel? peerToPeerPayment,
    bool? accountVerified,
    bool? emailVerified,
    bool? kycverified,
  }) = _PublicProfile;

  factory PublicProfile.fromJson(Map<String, dynamic> json) =>
      _$PublicProfileFromJson(json);

  factory PublicProfile.fromProfileModel(ProfileModel privateProfile) {
    return PublicProfile.fromJson(privateProfile.toJson());
  }
}
