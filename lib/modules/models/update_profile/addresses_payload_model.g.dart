// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressesPayloadModel _$AddressesPayloadModelFromJson(
        Map<String, dynamic> json) =>
    AddressesPayloadModel(
      addressId: json['addressId'] as String?,
      addressType: json['addressType'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      country: json['country'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postalCode: json['postalCode'] as String?,
    );

Map<String, dynamic> _$AddressesPayloadModelToJson(
    AddressesPayloadModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressId', instance.addressId);
  writeNotNull('addressType', instance.addressType);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('country', instance.country);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postalCode', instance.postalCode);
  return val;
}

_$_AddressesPayloadModel _$$_AddressesPayloadModelFromJson(
        Map<String, dynamic> json) =>
    _$_AddressesPayloadModel(
      addressId: json['addressId'] as String?,
      addressType: json['addressType'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      country: json['country'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postalCode: json['postalCode'] as String?,
    );

Map<String, dynamic> _$$_AddressesPayloadModelToJson(
        _$_AddressesPayloadModel instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'addressType': instance.addressType,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'country': instance.country,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
    };
