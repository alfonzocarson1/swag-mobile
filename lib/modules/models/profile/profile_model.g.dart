// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      accountId: json['accountId'] as String,
      username: json['username'] as String,
      useAvatar: json['useAvatar'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      listingsRating: (json['listingsRating'] as num).toDouble(),
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map(
              (e) => AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      collectionValue: (json['collectionValue'] as num).toDouble(),
      accountVerified: json['accountVerified'] as bool,
      emailVerified: json['emailVerified'] as bool,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'useAvatar': instance.useAvatar,
      'avatarUrl': instance.avatarUrl,
      'listingsRating': instance.listingsRating,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'addresses': instance.addresses,
      'collectionValue': instance.collectionValue,
      'accountVerified': instance.accountVerified,
      'emailVerified': instance.emailVerified,
    };

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      accountId: json['accountId'] as String,
      username: json['username'] as String,
      useAvatar: json['useAvatar'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      listingsRating: (json['listingsRating'] as num).toDouble(),
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map(
              (e) => AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      collectionValue: (json['collectionValue'] as num).toDouble(),
      accountVerified: json['accountVerified'] as bool,
      emailVerified: json['emailVerified'] as bool,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'useAvatar': instance.useAvatar,
      'avatarUrl': instance.avatarUrl,
      'listingsRating': instance.listingsRating,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'addresses': instance.addresses,
      'collectionValue': instance.collectionValue,
      'accountVerified': instance.accountVerified,
      'emailVerified': instance.emailVerified,
    };
