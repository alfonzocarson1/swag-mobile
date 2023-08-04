import '../../models/alerts/alert_response_model.dart';
import '../../models/alerts/alerts_model.dart';

abstract class IAlertService {
  Stream<String?> subscribeToAuthChanges();
  Future<AlertResponseModel> getAlertsList();
  Future<dynamic> saveAlert(AlertModel alert);
  Future<dynamic> readAlert(String notificationAlertId);
}
