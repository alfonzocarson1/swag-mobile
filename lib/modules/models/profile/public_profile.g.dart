// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicProfile _$$_PublicProfileFromJson(Map<String, dynamic> json) =>
    _$_PublicProfile(
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      useAvatar: json['useAvatar'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      listingsRating: (json['listingsRating'] as num?)?.toDouble(),
      peerToPeerPayment: json['peerToPeerPayment'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['peerToPeerPayment'] as Map<String, dynamic>),
      accountVerified: json['accountVerified'] as bool?,
      emailVerified: json['emailVerified'] as bool?,
      kycverified: json['kycverified'] as bool?,
    );

Map<String, dynamic> _$$_PublicProfileToJson(_$_PublicProfile instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'useAvatar': instance.useAvatar,
      'avatarUrl': instance.avatarUrl,
      'listingsRating': instance.listingsRating,
      'peerToPeerPayment': instance.peerToPeerPayment,
      'accountVerified': instance.accountVerified,
      'emailVerified': instance.emailVerified,
      'kycverified': instance.kycverified,
    };
