// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_for_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListingForSaleModel _$$_ListingForSaleModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListingForSaleModel(
      accountId: json['accountId'] as String?,
      productItemId: json['productItemId'] as String?,
      productItemName: json['productItemName'] as String?,
      productItemPrice: (json['productItemPrice'] as num?)?.toDouble(),
      productItemImageUrls: json['productItemImageUrls'],
      productItemDescription: json['productItemDescription'] as String?,
      condition: json['condition'] as String?,
      profileId: json['profileId'] as String?,
      catalogItemId: json['catalogItemId'] as String?,
      profileCollectionItemId: json['profileCollectionItemId'] as String?,
      lastSale: (json['lastSale'] as num?)?.toDouble(),
      forSale: json['forSale'] as bool?,
      sold: json['sold'] as bool?,
      removedReason: json['removedReason'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      shortMessage: json['shortMessage'] as String?,
      peerToPeerPaymentOptions: json['peerToPeerPaymentOptions'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['peerToPeerPaymentOptions'] as Map<String, dynamic>),
      listingItemsAction: json['listingItemsAction'] as String?,
    );

Map<String, dynamic> _$$_ListingForSaleModelToJson(
    _$_ListingForSaleModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('productItemId', instance.productItemId);
  writeNotNull('productItemName', instance.productItemName);
  writeNotNull('productItemPrice', instance.productItemPrice);
  writeNotNull('productItemImageUrls', instance.productItemImageUrls);
  writeNotNull('productItemDescription', instance.productItemDescription);
  writeNotNull('condition', instance.condition);
  writeNotNull('profileId', instance.profileId);
  writeNotNull('catalogItemId', instance.catalogItemId);
  writeNotNull('profileCollectionItemId', instance.profileCollectionItemId);
  writeNotNull('lastSale', instance.lastSale);
  writeNotNull('forSale', instance.forSale);
  writeNotNull('sold', instance.sold);
  writeNotNull('removedReason', instance.removedReason);
  writeNotNull('isDeleted', instance.isDeleted);
  writeNotNull('status', instance.status);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('shortMessage', instance.shortMessage);
  writeNotNull('peerToPeerPaymentOptions', instance.peerToPeerPaymentOptions);
  writeNotNull('listingItemsAction', instance.listingItemsAction);
  return val;
}
