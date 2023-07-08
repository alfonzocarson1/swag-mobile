// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_a_listing_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuyASaleListingResponseModel _$$_BuyASaleListingResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuyASaleListingResponseModel(
      response: json['response'] as bool? ?? false,
      shortMessage: json['shortMessage'] as String?,
      channelUrl: json['channelUrl'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_BuyASaleListingResponseModelToJson(
    _$_BuyASaleListingResponseModel instance) {
  final val = <String, dynamic>{
    'response': instance.response,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shortMessage', instance.shortMessage);
  writeNotNull('channelUrl', instance.channelUrl);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  return val;
}
