// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAccountPayloadModel _$$_CreateAccountPayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAccountPayloadModel(
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      userName: json['userName'] as String,
      termsOfServiceAccepted: json['termsOfServiceAccepted'] as bool,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$$_CreateAccountPayloadModelToJson(
        _$_CreateAccountPayloadModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'userName': instance.userName,
      'termsOfServiceAccepted': instance.termsOfServiceAccepted,
      'deviceId': instance.deviceId,
    };
