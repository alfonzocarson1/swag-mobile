// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_a_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuyASaleListingModel _$$_BuyASaleListingModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuyASaleListingModel(
      saveAddress: json['saveAddress'] as bool?,
      productItemId: json['productItemId'] as String?,
      userNameBuyer: json['userNameBuyer'] as String?,
      address: json['address'] == null
          ? null
          : AddressesPayloadModel.fromJson(
              json['address'] as Map<String, dynamic>),
      profilePeerToPeerPayment: json['profilePeerToPeerPayment'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['profilePeerToPeerPayment'] as Map<String, dynamic>),
      purchaseOrder: json['purchaseOrder'] as String?,
    );

Map<String, dynamic> _$$_BuyASaleListingModelToJson(
        _$_BuyASaleListingModel instance) =>
    <String, dynamic>{
      'saveAddress': instance.saveAddress,
      'productItemId': instance.productItemId,
      'userNameBuyer': instance.userNameBuyer,
      'address': instance.address,
      'profilePeerToPeerPayment': instance.profilePeerToPeerPayment,
      'purchaseOrder': instance.purchaseOrder,
    };
