// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForgotPasswordCodeModel _$$_ForgotPasswordCodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordCodeModel(
      statusCode: json['statusCode'] as String?,
      statusMessage: json['statusMessage'] as String?,
      response: json['response'] as bool?,
    );

Map<String, dynamic> _$$_ForgotPasswordCodeModelToJson(
    _$_ForgotPasswordCodeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('statusCode', instance.statusCode);
  writeNotNull('statusMessage', instance.statusMessage);
  writeNotNull('response', instance.response);
  return val;
}
