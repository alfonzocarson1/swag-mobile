// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      accountId: json['accountId'] as String,
      username: json['username'] as String,
      useAvatar: json['useAvatar'] as String,
      listingsRating: (json['listingsRating'] as num).toDouble(),
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map(
              (e) => AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      accountVerified: json['accountVerified'] as bool,
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'useAvatar': instance.useAvatar,
      'listingsRating': instance.listingsRating,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'addresses': instance.addresses,
      'accountVerified': instance.accountVerified,
    };
