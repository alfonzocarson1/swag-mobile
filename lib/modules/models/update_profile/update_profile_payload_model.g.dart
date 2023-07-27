// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProfilePayloadModel _$$_UpdateProfilePayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProfilePayloadModel(
      accountId: json['accountId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      userName: json['userName'] as String?,
      useAvatar: json['useAvatar'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map(
              (e) => AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UpdateProfilePayloadModelToJson(
    _$_UpdateProfilePayloadModel instance) {
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
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('addresses', instance.addresses);
  return val;
}
