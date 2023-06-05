import '../../models/settings/peer_to_peer_payments_get_model.dart';
import '../../models/settings/peer_to_peer_payments_model.dart';

abstract class IPeerToPeerPaymentsService {
  Stream<String?> subscribeToAuthChanges();
  Future<PeerToPeerPaymentsGetModel> getPyments();
  Future<PeerToPeerPaymentsGetModel> postPyments(PeerToPeerPaymentsModel model);
}
