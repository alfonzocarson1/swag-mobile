import 'dart:typed_data';
import '../../models/update_profile/update_avatar_model.dart';
import '../../models/update_profile/update_profile_model.dart';
import '../../models/update_profile/update_profile_payload_model.dart';

abstract class IUpdateProfileService {
  Stream<String?> subscribeToAuthChanges();
  Future<UpdateProfileModel> updateProfile(UpdateProfilePayloadModel model);
  Future<UpdateAvatarModel> updateAvatar(
      Uint8List bytes, String imageTopic, String topicId);
  Future<bool> requestEmailVerification();
  Future<dynamic> deleteAccount();
  Future<UpdateProfileModel> removeAddress(String addressId);
}
