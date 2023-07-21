// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_for_sale_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuyForSaleListingModel _$$_BuyForSaleListingModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuyForSaleListingModel(
      productItemId: json['productItemId'] as String?,
      productItemName: json['productItemName'] as String?,
      productItemPrice: (json['productItemPrice'] as num?)?.toDouble(),
      productItemImageUrls:
          json['productItemImageUrls'] as List<dynamic>? ?? const [],
      productItemDescription: json['productItemDescription'] as String?,
      condition: json['condition'] as String?,
      profileId: json['profileId'] as String?,
      catalogItemId: json['catalogItemId'] as String?,
      profileCollectionItemId: json['profileCollectionItemId'] as String?,
      lastSale: (json['lastSale'] as num?)?.toDouble(),
      forSale: json['forSale'] as bool?,
      sold: json['sold'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      status: json['status'] as String?,
      peerToPeerPaymentOptions: json['peerToPeerPaymentOptions'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['peerToPeerPaymentOptions'] as Map<String, dynamic>),
      submitPurchaseInfo: json['submitPurchaseInfo'] == null
          ? null
          : BuyUserForSaleListingModel.fromJson(
              json['submitPurchaseInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BuyForSaleListingModelToJson(
    _$_BuyForSaleListingModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productItemId', instance.productItemId);
  writeNotNull('productItemName', instance.productItemName);
  writeNotNull('productItemPrice', instance.productItemPrice);
  val['productItemImageUrls'] = instance.productItemImageUrls;
  writeNotNull('productItemDescription', instance.productItemDescription);
  writeNotNull('condition', instance.condition);
  writeNotNull('profileId', instance.profileId);
  writeNotNull('catalogItemId', instance.catalogItemId);
  writeNotNull('profileCollectionItemId', instance.profileCollectionItemId);
  writeNotNull('lastSale', instance.lastSale);
  writeNotNull('forSale', instance.forSale);
  writeNotNull('sold', instance.sold);
  writeNotNull('isDeleted', instance.isDeleted);
  writeNotNull('status', instance.status);
  writeNotNull('peerToPeerPaymentOptions', instance.peerToPeerPaymentOptions);
  writeNotNull('submitPurchaseInfo', instance.submitPurchaseInfo);
  return val;
}
