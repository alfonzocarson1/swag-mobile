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
      productItemImageUrls: json['productItemImageUrls'] as List<dynamic>,
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
    );

Map<String, dynamic> _$$_BuyForSaleListingModelToJson(
        _$_BuyForSaleListingModel instance) =>
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
    };
