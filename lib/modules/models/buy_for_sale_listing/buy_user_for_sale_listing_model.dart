import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/peer_to_peer_payments_model.dart';
import '../update_profile/addresses_payload_model.dart';

part 'buy_user_for_sale_listing_model.freezed.dart';
part 'buy_user_for_sale_listing_model.g.dart';

@freezed
class BuyUserForSaleListingModel with _$BuyUserForSaleListingModel {
  @JsonSerializable(includeIfNull: false)
  const factory BuyUserForSaleListingModel({
    final String? userNameBuyer,
    final String? avatarBuyer,
    final String? avatarBuyerUrl,
    final AddressesPayloadModel? address,
    final PeerToPeerPaymentsModel? profilePeerToPeerPayment,
  }) = _BuyUserForSaleListingModel;

  factory BuyUserForSaleListingModel.fromJson(Map<String, dynamic> json) =>
      _$BuyUserForSaleListingModelFromJson(json);
}
