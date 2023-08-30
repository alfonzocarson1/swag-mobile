import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';

import '../settings/peer_to_peer_payments_model.dart';

part 'public_profile.freezed.dart';
part 'public_profile.g.dart';

@freezed
class PublicProfile with _$PublicProfile {
  const PublicProfile._();

  const factory PublicProfile({
    String? accountId,
    String? username,
    String? useAvatar,
    String? avatarUrl,
    double? listingsRating,
    PeerToPeerPaymentsModel? peerToPeerPayment,
    bool? accountVerified,
    bool? emailVerified,
    String? kycStatus,
  }) = _PublicProfile;

  factory PublicProfile.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey("kycStatus")) {
      json["kycStatus"] =
          (json["kycverified"] as bool?) == true ? "VERIFIED" : "UNVERIFIED";
    }
    return _$PublicProfileFromJson(json);
  }

  factory PublicProfile.fromProfileModel(ProfileModel privateProfile) {
    return PublicProfile.fromJson(privateProfile.toJson());
  }

  bool get kycverified => kycStatus == "VERIFIED";
}
