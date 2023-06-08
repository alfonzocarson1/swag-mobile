import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/peer_to_peer_payments_model.dart';
import '../update_profile/addresses_payload_model.dart';

part 'buy_a_listing_model.freezed.dart';
part 'buy_a_listing_model.g.dart';

@freezed
class BuyASaleListingModel with _$BuyASaleListingModel {
  @JsonSerializable()
  const factory BuyASaleListingModel({
    final bool? saveAddress,
    final String? productItemId,
    final AddressesPayloadModel? address,
    final PeerToPeerPaymentsModel? profilePeerToPeerPayment,
  }) = _BuyASaleListingModel;

  factory BuyASaleListingModel.fromJson(Map<String, dynamic> json) =>
      _$BuyASaleListingModelFromJson(json);
}
