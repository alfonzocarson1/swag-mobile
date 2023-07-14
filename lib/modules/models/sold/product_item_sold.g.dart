// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item_sold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductItemSold _$$_ProductItemSoldFromJson(Map<String, dynamic> json) =>
    _$_ProductItemSold(
      productItemId: json['productItemId'] as String,
      productItemName: json['productItemName'] as String,
      productItemPrice: (json['productItemPrice'] as num?)?.toDouble(),
      productItemImageUrls: (json['productItemImageUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
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
      soldTo: json['soldTo'] as String?,
      soldDate: json['soldDate'] as String?,
      peerToPeerPaymentOptions: json['peerToPeerPaymentOptions'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['peerToPeerPaymentOptions'] as Map<String, dynamic>),
      submitPurchaseInfo: json['submitPurchaseInfo'] == null
          ? null
          : SubmitPurchaseInfo.fromJson(
              json['submitPurchaseInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductItemSoldToJson(_$_ProductItemSold instance) =>
    <String, dynamic>{
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
      'isDeleted': instance.isDeleted,
      'status': instance.status,
      'soldTo': instance.soldTo,
      'soldDate': instance.soldDate,
      'peerToPeerPaymentOptions': instance.peerToPeerPaymentOptions,
      'submitPurchaseInfo': instance.submitPurchaseInfo,
    };
