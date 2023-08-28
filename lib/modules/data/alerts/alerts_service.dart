import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/alerts/alert_response_model.dart';
import '../../models/alerts/alert_verify_rate_model.dart';
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

  @override
  Future<dynamic> readAlert(String notificationAlertId) async {
    dynamic response = await apiService.getEndpointData(
      endpoint: Endpoint.readAlert,
      method: RequestMethod.put,
      dynamicParam: notificationAlertId,
      needBearer: true,
      fromJson: (json) => json,
    );
    return response;
  }

  @override
  Future<dynamic> saveAlert(AlertModel alert) async {
    dynamic response = await apiService.getEndpointData(
      endpoint: Endpoint.addAlertP2P,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => json,
      body: alert.toJson(),
    );
    return response;
  }

  @override
  Future<dynamic> verifyRateAlert(VerifyRateModel data) async {
    dynamic response = await apiService.getEndpointData(
      endpoint: Endpoint.verifyRateAlert,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => json,
      body: data.toJson(),
    );
    return response;
  }
}
