import 'package:swagapp/modules/models/kyc/kyc_session.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';

class KycService {
  KycService(this.apiService);

  final APIService apiService;

  Future<KycSession> createKycSession() async {
    return await apiService.getEndpointData(
      needBearer: true,
      method: RequestMethod.post,
      endpoint: Endpoint.startContinueKycVerificationSession,
      fromJson: (json) => KycSession.fromJson(json),
    );
  }
}
