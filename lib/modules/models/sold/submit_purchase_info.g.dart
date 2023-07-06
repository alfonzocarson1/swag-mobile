// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_purchase_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubmitPurchaseInfo _$$_SubmitPurchaseInfoFromJson(
        Map<String, dynamic> json) =>
    _$_SubmitPurchaseInfo(
      buyerAccountId: json['buyerAccountId'] as String?,
      userNameBuyer: json['userNameBuyer'] as String?,
      avatarBuyer: json['avatarBuyer'] as String?,
      avatarBuyerUrl: json['avatarBuyerUrl'] as String?,
      address: json['address'] == null
          ? null
          : AddressesPayloadModel.fromJson(
              json['address'] as Map<String, dynamic>),
      profilePeerToPeerPayment: json['profilePeerToPeerPayment'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['profilePeerToPeerPayment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubmitPurchaseInfoToJson(
        _$_SubmitPurchaseInfo instance) =>
    <String, dynamic>{
      'buyerAccountId': instance.buyerAccountId,
      'userNameBuyer': instance.userNameBuyer,
      'avatarBuyer': instance.avatarBuyer,
      'avatarBuyerUrl': instance.avatarBuyerUrl,
      'address': instance.address,
      'profilePeerToPeerPayment': instance.profilePeerToPeerPayment,
    };
