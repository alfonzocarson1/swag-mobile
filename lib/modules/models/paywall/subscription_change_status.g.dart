// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_change_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaywallSubscriptionRequest _$$_PaywallSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PaywallSubscriptionRequest(
      accountId: json['accountId'] as String,
      transactionID: json['transactionID'] as String,
      deviceType: json['deviceType'] as String,
    );

Map<String, dynamic> _$$_PaywallSubscriptionRequestToJson(
        _$_PaywallSubscriptionRequest instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'transactionID': instance.transactionID,
      'deviceType': instance.deviceType,
    };
