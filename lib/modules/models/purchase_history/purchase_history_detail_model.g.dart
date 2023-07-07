// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_history_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseHistoryDetailModel _$$_PurchaseHistoryDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseHistoryDetailModel(
      purchaseHistoryId: json['purchaseHistoryId'] as String?,
      purchasePaymentMethod: json['purchasePaymentMethod'] as String?,
      purchaseItems: (json['purchaseItems'] as List<dynamic>)
          .map((e) => PurchaseItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      purchaseTotal: (json['purchaseTotal'] as num?)?.toDouble() ?? 0.0,
      purchaseShippingInfo: PurchaseHistoryDetailShippingModel.fromJson(
          json['purchaseShippingInfo'] as Map<String, dynamic>),
      sourcePurchase: json['sourcePurchase'] as String?,
      purchaseDate: json['purchaseDate'] as String?,
    );

Map<String, dynamic> _$$_PurchaseHistoryDetailModelToJson(
        _$_PurchaseHistoryDetailModel instance) =>
    <String, dynamic>{
      'purchaseHistoryId': instance.purchaseHistoryId,
      'purchasePaymentMethod': instance.purchasePaymentMethod,
      'purchaseItems': instance.purchaseItems,
      'purchaseTotal': instance.purchaseTotal,
      'purchaseShippingInfo': instance.purchaseShippingInfo,
      'sourcePurchase': instance.sourcePurchase,
      'purchaseDate': instance.purchaseDate,
    };

_$_PurchaseHistoryDetailShippingModel
    _$$_PurchaseHistoryDetailShippingModelFromJson(Map<String, dynamic> json) =>
        _$_PurchaseHistoryDetailShippingModel(
          address: PurchaseHistoryDetailAddressModel.fromJson(
              json['address'] as Map<String, dynamic>),
          statusShipping: json['statusShipping'] as String?,
          trackingNumber: json['trackingNumber'] as String?,
        );

Map<String, dynamic> _$$_PurchaseHistoryDetailShippingModelToJson(
        _$_PurchaseHistoryDetailShippingModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'statusShipping': instance.statusShipping,
      'trackingNumber': instance.trackingNumber,
    };

_$_PurchaseHistoryDetailAddressModel
    _$$_PurchaseHistoryDetailAddressModelFromJson(Map<String, dynamic> json) =>
        _$_PurchaseHistoryDetailAddressModel(
          addressType: json['addressType'] as String?,
          firstName: json['firstName'] as String?,
          lastName: json['lastName'] as String?,
          country: json['country'] as String?,
          address1: json['address1'] as String?,
          address2: json['address2'] as String?,
          city: json['city'] as String?,
          state: json['state'] as String?,
          postalCode: json['postalCode'] as String?,
        );

Map<String, dynamic> _$$_PurchaseHistoryDetailAddressModelToJson(
        _$_PurchaseHistoryDetailAddressModel instance) =>
    <String, dynamic>{
      'addressType': instance.addressType,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'country': instance.country,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
    };
