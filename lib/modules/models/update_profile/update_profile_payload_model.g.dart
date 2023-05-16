// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfilePayloadModel _$UpdateProfilePayloadModelFromJson(
        Map<String, dynamic> json) =>
    UpdateProfilePayloadModel(
      accountId: json['accountId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      userName: json['userName'] as String?,
      useAvatar: json['useAvatar'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map(
              (e) => AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateProfilePayloadModelToJson(
    UpdateProfilePayloadModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('userName', instance.userName);
  writeNotNull('useAvatar', instance.useAvatar);
  writeNotNull('addresses', instance.addresses);
  return val;
}

_$_UpdateProfilePayloadModel _$$_UpdateProfilePayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProfilePayloadModel(
      accountId: json['accountId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      userName: json['userName'] as String?,
      useAvatar: json['useAvatar'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map(
              (e) => AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UpdateProfilePayloadModelToJson(
        _$_UpdateProfilePayloadModel instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'userName': instance.userName,
      'useAvatar': instance.useAvatar,
      'addresses': instance.addresses,
    };
