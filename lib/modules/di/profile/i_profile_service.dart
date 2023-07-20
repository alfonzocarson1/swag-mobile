import 'package:swagapp/modules/models/profile/public_profile.dart';

abstract class IProfileService {
  Future<PublicProfile> getProfile(String profileId);
}
