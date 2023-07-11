import 'dart:developer';

import 'package:swagapp/modules/api/api_service.dart';
import 'package:swagapp/modules/data/profile/i_profile_service.dart';
import 'package:swagapp/modules/models/profile/public_profile.dart';

import '../../api/api.dart';

class ProfileService implements IProfileService {
  final APIService _apiService;

  ProfileService(this._apiService);

  @override
  Future<PublicProfile> getProfile(String profileId) async {
    final response = await _apiService.getEndpointData(
      endpoint: Endpoint.publicProfile,
      method: RequestMethod.get,
      dynamicParam: profileId,
      fromJson: (json) => PublicProfile.fromJson(json),
    );
    return response;
  }
}
