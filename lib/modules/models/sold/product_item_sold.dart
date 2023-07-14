import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/settings/peer_to_peer_payments_model.dart';
import 'package:swagapp/modules/models/sold/submit_purchase_info.dart';

part 'product_item_sold.freezed.dart';

part 'product_item_sold.g.dart';

@freezed
class ProductItemSold with _$ProductItemSold {
  @JsonSerializable()
  const factory ProductItemSold({
    required String productItemId,
    required String productItemName,
    double? productItemPrice,
    required List<String> productItemImageUrls,
    String? productItemDescription,
    String? condition,
    String? profileId,
    String? catalogItemId,
    String? profileCollectionItemId,
    double? lastSale,
    bool? forSale,
    bool? sold,
    bool? isDeleted,
    String? status,
    String? soldTo,
    String? soldDate,
    PeerToPeerPaymentsModel? peerToPeerPaymentOptions,
    SubmitPurchaseInfo? submitPurchaseInfo,
  }) = _ProductItemSold;

  factory ProductItemSold.fromJson(Map<String, dynamic> json) =>
      _$ProductItemSoldFromJson(json);
}
