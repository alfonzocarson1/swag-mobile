// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProfileModel _$$_UpdateProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProfileModel(
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      listingsRating: (json['listingsRating'] as num?)?.toDouble(),
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map(
              (e) => AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasActiveSubscription: json['hasActiveSubscription'] as bool?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateProfileModelToJson(
        _$_UpdateProfileModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'listingsRating': instance.listingsRating,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'addresses': instance.addresses,
      'hasActiveSubscription': instance.hasActiveSubscription,
      'status': instance.status,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
