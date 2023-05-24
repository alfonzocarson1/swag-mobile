import 'package:freezed_annotation/freezed_annotation.dart';

import 'peer_to_peer_payments_model.dart';
import 'peer_to_peer_payments_status_model.dart';

part 'peer_to_peer_payments_get_model.freezed.dart';
part 'peer_to_peer_payments_get_model.g.dart';

@freezed
class PeerToPeerPaymentsGetModel with _$PeerToPeerPaymentsGetModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false)
  const factory PeerToPeerPaymentsGetModel({
    final String? accountId,
    final PeerToPeerPaymentsModel? peerToPeerPayments,
    final PeerToPeerPaymentsStatusModel? status,
  }) = _PeerToPeerPaymentsGetModel;

  factory PeerToPeerPaymentsGetModel.fromJson(Map<String, dynamic> json) =>
      _$PeerToPeerPaymentsGetModelFromJson(json);
}
