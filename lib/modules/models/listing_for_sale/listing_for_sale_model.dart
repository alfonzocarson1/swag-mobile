import 'package:freezed_annotation/freezed_annotation.dart';

import '../settings/peer_to_peer_payments_model.dart';

part 'listing_for_sale_model.freezed.dart';
part 'listing_for_sale_model.g.dart';

@freezed
class ListingForSaleModel with _$ListingForSaleModel {
  @JsonSerializable(includeIfNull: false)
  const factory ListingForSaleModel(
      {final String? accountId,
      final String? productItemId,
      final String? productItemName,
      final double? productItemPrice,
      final dynamic productItemImageUrls,
      final String? productItemDescription,
      final String? condition,
      final String? profileId,
      final String? catalogItemId,
      final String? profileCollectionItemId,
      final double? lastSale,
      final bool? forSale,
      final bool? sold,
      final String? removedReason,
      final bool? isDeleted,
      final String? status,
      final PeerToPeerPaymentsModel? peerToPeerPaymentOptions,
      final String? listingItemsAction}) = _ListingForSaleModel;

  factory ListingForSaleModel.fromJson(Map<String, dynamic> json) =>
      _$ListingForSaleModelFromJson(json);
}
