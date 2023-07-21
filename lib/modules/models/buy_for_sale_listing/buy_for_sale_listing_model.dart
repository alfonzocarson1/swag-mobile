import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/peer_to_peer_payments_get_model.dart';
import '../settings/peer_to_peer_payments_model.dart';
import 'buy_user_for_sale_listing_model.dart';

part 'buy_for_sale_listing_model.freezed.dart';
part 'buy_for_sale_listing_model.g.dart';

@freezed
class BuyForSaleListingModel with _$BuyForSaleListingModel {
  @JsonSerializable(includeIfNull: false)
  const factory BuyForSaleListingModel({
    final String? productItemId,
    final String? productItemName,
    final double? productItemPrice,
    @Default([])
    final List<dynamic> productItemImageUrls,
    final String? productItemDescription,
    final String? condition,
    final String? profileId,
    final String? catalogItemId,
    final String? profileCollectionItemId,
    final double? lastSale,
    final bool? forSale,
    final bool? sold,
    final bool? isDeleted,
    final String? status,
    final PeerToPeerPaymentsModel? peerToPeerPaymentOptions,
    final BuyUserForSaleListingModel? submitPurchaseInfo,
  }) = _BuyForSaleListingModel;

  factory BuyForSaleListingModel.fromJson(Map<String, dynamic> json) =>
      _$BuyForSaleListingModelFromJson(json);
}
