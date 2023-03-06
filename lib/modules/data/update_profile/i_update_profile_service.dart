import '../../models/update_profile/update_profile_model.dart';
import '../../models/update_profile/update_profile_payload_model.dart';

abstract class IUpdateProfileService {
  Stream<String?> subscribeToAuthChanges();
  Future<UpdateProfileModel> updateProfile(UpdateProfilePayloadModel model);
}
