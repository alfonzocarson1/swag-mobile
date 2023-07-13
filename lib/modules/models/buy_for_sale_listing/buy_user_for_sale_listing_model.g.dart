// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_user_for_sale_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuyUserForSaleListingModel _$$_BuyUserForSaleListingModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuyUserForSaleListingModel(
      userNameBuyer: json['userNameBuyer'] as String?,
      avatarBuyer: json['avatarBuyer'] as String?,
      avatarBuyerUrl: json['avatarBuyerUrl'] as String?,
      purchaseOrder: json['purchaseOrder'] as int?,
      address: json['address'] == null
          ? null
          : AddressesPayloadModel.fromJson(
              json['address'] as Map<String, dynamic>),
      profilePeerToPeerPayment: json['profilePeerToPeerPayment'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['profilePeerToPeerPayment'] as Map<String, dynamic>),
      purchaseHistoryId: json['purchaseHistoryId'] as String?,
    );

Map<String, dynamic> _$$_BuyUserForSaleListingModelToJson(
    _$_BuyUserForSaleListingModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userNameBuyer', instance.userNameBuyer);
  writeNotNull('avatarBuyer', instance.avatarBuyer);
  writeNotNull('avatarBuyerUrl', instance.avatarBuyerUrl);
  writeNotNull('purchaseOrder', instance.purchaseOrder);
  writeNotNull('address', instance.address);
  writeNotNull('profilePeerToPeerPayment', instance.profilePeerToPeerPayment);
  writeNotNull('purchaseHistoryId', instance.purchaseHistoryId);
  return val;
}
