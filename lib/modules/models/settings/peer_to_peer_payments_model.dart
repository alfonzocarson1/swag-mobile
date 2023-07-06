import 'package:freezed_annotation/freezed_annotation.dart';

part 'peer_to_peer_payments_model.freezed.dart';
part 'peer_to_peer_payments_model.g.dart';

@freezed
class PeerToPeerPaymentsModel with _$PeerToPeerPaymentsModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false)
  const factory PeerToPeerPaymentsModel({
    final String? venmoUser,
    final String? cashTag,
    final String? payPalEmail,
    final String? accountProfilePeerToPeerPaymentId,
  }) = _PeerToPeerPaymentsModel;

  factory PeerToPeerPaymentsModel.fromJson(Map<String, dynamic> json) =>
      _$PeerToPeerPaymentsModelFromJson(json);
}
