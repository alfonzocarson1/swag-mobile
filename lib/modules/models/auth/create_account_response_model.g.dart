// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAccountResponseModel _$$_CreateAccountResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAccountResponseModel(
      errorCode: json['errorCode'] as String? ?? defaultString,
      errorMessage: json['errorMessage'] as String? ?? defaultString,
      token: json['token'] as String? ?? defaultString,
      accountId: json['accountId'] as String? ?? defaultString,
      hasImportableData: json['hasImportableData'] as bool? ?? false,
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) =>
                  AddressesPayloadModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CreateAccountResponseModelToJson(
        _$_CreateAccountResponseModel instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'token': instance.token,
      'accountId': instance.accountId,
      'hasImportableData': instance.hasImportableData,
      'addresses': instance.addresses,
    };
