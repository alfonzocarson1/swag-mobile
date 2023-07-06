import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/settings/peer_to_peer_payments_model.dart';
import 'package:swagapp/modules/models/update_profile/addresses_payload_model.dart';

part 'submit_purchase_info.freezed.dart';
part 'submit_purchase_info.g.dart';

@freezed
class SubmitPurchaseInfo with _$SubmitPurchaseInfo {
  const factory SubmitPurchaseInfo({
    String? buyerAccountId,
    String? userNameBuyer,
    String? avatarBuyer,
    String? avatarBuyerUrl,
    AddressesPayloadModel? address,
    PeerToPeerPaymentsModel? profilePeerToPeerPayment,
}) = _SubmitPurchaseInfo;

  factory SubmitPurchaseInfo.fromJson(Map<String, dynamic> json) =>
      _$SubmitPurchaseInfoFromJson(json);
}
