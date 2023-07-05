import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/alerts/alert_response_model.dart';
import '../../models/alerts/alerts_model.dart';

import 'i_alerts_service.dart';

class AlertService extends IAlertService {
  AlertService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<AlertResponseModel> getAlertsList() async {
    AlertResponseModel response = await apiService.getEndpointData(
      endpoint: Endpoint.alerts,
      method: RequestMethod.get,
      jsonKey: "alertList",
      needBearer: true,
      fromJson: (json) => AlertResponseModel.fromJson(json),
    );
    return response;
  }
}
