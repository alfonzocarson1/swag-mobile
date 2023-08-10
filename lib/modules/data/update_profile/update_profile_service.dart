import 'dart:typed_data';

import 'package:swagapp/modules/pages/login/create_account_page.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/update_profile/update_avatar_model.dart';
import '../../models/update_profile/update_profile_model.dart';
import '../../models/update_profile/update_profile_payload_model.dart';
import 'i_update_profile_service.dart';

class UpdateProfileService extends IUpdateProfileService {
  UpdateProfileService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<UpdateProfileModel> updateProfile(
      UpdateProfilePayloadModel model) async {
    UpdateProfileModel response = await apiService.getEndpointData(
      endpoint: Endpoint.updateProfile,
      method: RequestMethod.post,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => UpdateProfileModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<dynamic> deleteAccount() async {
    dynamic response = await apiService.getEndpointData(
        endpoint: Endpoint.deleteAccount,
        method: RequestMethod.delete,
        fromJson: (json) => json
    );

    return response;
  }

  @override
  Future<UpdateAvatarModel> updateAvatar(
      Uint8List bytes, String imageTopic, String topicId) async {
    String param = '$imageTopic/$topicId';
    UpdateAvatarModel response = await apiService.getEndpointData(
      endpoint: Endpoint.updateAvatar,
      method: RequestMethod.multipart,
      dynamicParam: param,
      needBearer: true,
      bytes: bytes,
      fromJson: (json) => UpdateAvatarModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<bool> requestEmailVerification() async {
    String response = await apiService.getEndpointData(
      endpoint: Endpoint.requestEmailVerification,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => json,
    );
    return response.parseBool();
  }

  @override
  Future<UpdateProfileModel> removeAddress(String addressId) async {
    UpdateProfileModel response = await apiService.getEndpointData(
      endpoint: Endpoint.removeAddress,
      method: RequestMethod.delete,
      dynamicParam: addressId,
      needBearer: true,
      fromJson: (json) => UpdateProfileModel.fromJson(json),
    );
    return response;
  }
}
