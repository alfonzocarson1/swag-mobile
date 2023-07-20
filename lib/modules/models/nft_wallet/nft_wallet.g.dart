// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NftWalletModel _$$_NftWalletModelFromJson(Map<String, dynamic> json) =>
    _$_NftWalletModel(
      nftWalletId: json['nftWalletId'] as String,
      nftWallet: json['nftWallet'] as String,
      accountProfileId: json['accountProfileId'] as String?,
      accountId: json['accountId'] as String,
    );

Map<String, dynamic> _$$_NftWalletModelToJson(_$_NftWalletModel instance) =>
    <String, dynamic>{
      'nftWalletId': instance.nftWalletId,
      'nftWallet': instance.nftWallet,
      'accountProfileId': instance.accountProfileId,
      'accountId': instance.accountId,
    };
