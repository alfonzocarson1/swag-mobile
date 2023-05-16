// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_for_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingForSaleModel _$ListingForSaleModelFromJson(Map<String, dynamic> json) =>
    ListingForSaleModel(
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
      peerToPeerPaymentOptions: json['peerToPeerPaymentOptions'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['peerToPeerPaymentOptions'] as Map<String, dynamic>),
      listingItemsAction: json['listingItemsAction'] as String?,
    );

Map<String, dynamic> _$ListingForSaleModelToJson(ListingForSaleModel instance) {
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
  writeNotNull('peerToPeerPaymentOptions', instance.peerToPeerPaymentOptions);
  writeNotNull('listingItemsAction', instance.listingItemsAction);
  return val;
}

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
      peerToPeerPaymentOptions: json['peerToPeerPaymentOptions'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['peerToPeerPaymentOptions'] as Map<String, dynamic>),
      listingItemsAction: json['listingItemsAction'] as String?,
    );

Map<String, dynamic> _$$_ListingForSaleModelToJson(
        _$_ListingForSaleModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'productItemId': instance.productItemId,
      'productItemName': instance.productItemName,
      'productItemPrice': instance.productItemPrice,
      'productItemImageUrls': instance.productItemImageUrls,
      'productItemDescription': instance.productItemDescription,
      'condition': instance.condition,
      'profileId': instance.profileId,
      'catalogItemId': instance.catalogItemId,
      'profileCollectionItemId': instance.profileCollectionItemId,
      'lastSale': instance.lastSale,
      'forSale': instance.forSale,
      'sold': instance.sold,
      'removedReason': instance.removedReason,
      'isDeleted': instance.isDeleted,
      'status': instance.status,
      'peerToPeerPaymentOptions': instance.peerToPeerPaymentOptions,
      'listingItemsAction': instance.listingItemsAction,
    };
