import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/settings/peer_to_peer_payments_get_model.dart';
import '../../models/settings/peer_to_peer_payments_model.dart';
import 'i_peer_to_peer_payments_service.dart';

class PeerToPeerPaymentsService extends IPeerToPeerPaymentsService {
  PeerToPeerPaymentsService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<PeerToPeerPaymentsGetModel> getPyments() async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.peerToPeerPayments,
      method: RequestMethod.get,
      needBearer: true,
      fromJson: (json) => PeerToPeerPaymentsGetModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<PeerToPeerPaymentsGetModel> postPyments(
      PeerToPeerPaymentsModel model) async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.peerToPeerPayments,
      method: RequestMethod.post,
      needBearer: true,
      body: model.toJson(),
      fromJson: (json) => PeerToPeerPaymentsGetModel.fromJson(json),
    );
    return response;
  }
}
