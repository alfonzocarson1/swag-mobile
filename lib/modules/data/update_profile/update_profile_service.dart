import '../../api/api.dart';
import '../../api/api_service.dart';
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
}
