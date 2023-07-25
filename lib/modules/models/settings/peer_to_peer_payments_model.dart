import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/common/utils/utils.dart';

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

extension PeerToPeerPaymentsModelList on PeerToPeerPaymentsModel {
  List<String> listOfAvailableMethods() {
    return [
      if (this.cashTag.isNotEmptyOrNull) "CashApp",
      if (this.venmoUser.isNotEmptyOrNull) "Venmo",
      if (this.payPalEmail.isNotEmptyOrNull) "PayPal",
    ];
  }
}
