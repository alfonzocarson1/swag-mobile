// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_purchase_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancelPurchaseResponseModel _$$_CancelPurchaseResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CancelPurchaseResponseModel(
      response: json['response'] as bool?,
      shortMessage: json['shortMessage'] as String?,
      listingStatus: json['listingStatus'] as String?,
    );

Map<String, dynamic> _$$_CancelPurchaseResponseModelToJson(
        _$_CancelPurchaseResponseModel instance) =>
    <String, dynamic>{
      'response': instance.response,
      'shortMessage': instance.shortMessage,
      'listingStatus': instance.listingStatus,
    };
