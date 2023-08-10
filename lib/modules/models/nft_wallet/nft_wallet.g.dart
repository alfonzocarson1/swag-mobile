// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NftWalletModel _$$_NftWalletModelFromJson(Map<String, dynamic> json) =>
    _$_NftWalletModel(
      walletAddress: json['walletAddress'] as String,
      confirmed: json['confirmed'] as bool?,
      verificationCode: json['verificationCode'] as String?,
      accountId: json['accountId'] as String,
    );

Map<String, dynamic> _$$_NftWalletModelToJson(_$_NftWalletModel instance) =>
    <String, dynamic>{
      'walletAddress': instance.walletAddress,
      'confirmed': instance.confirmed,
      'verificationCode': instance.verificationCode,
      'accountId': instance.accountId,
    };
