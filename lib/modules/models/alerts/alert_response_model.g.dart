// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlertResponseModel _$$_AlertResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_AlertResponseModel(
      alertList: (json['alertList'] as List<dynamic>)
          .map((e) => AlertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlertResponseModelToJson(
        _$_AlertResponseModel instance) =>
    <String, dynamic>{
      'alertList': instance.alertList,
    };
