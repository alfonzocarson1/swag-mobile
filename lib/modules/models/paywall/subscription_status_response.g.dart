// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaywallSubscriptionResponse _$$_PaywallSubscriptionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaywallSubscriptionResponse(
      accountId: json['accountId'] as String,
      profileSubscriptionId: json['profileSubscriptionId'] as String,
      transactionId: json['transactionId'] as String,
      hasActiveSubscription: json['hasActiveSubscription'] as bool,
      hasUsedFreeTrial: json['hasUsedFreeTrial'] as bool,
      subscriptionDate: json['subscriptionDate'] as String,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$_PaywallSubscriptionResponseToJson(
        _$_PaywallSubscriptionResponse instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'profileSubscriptionId': instance.profileSubscriptionId,
      'transactionId': instance.transactionId,
      'hasActiveSubscription': instance.hasActiveSubscription,
      'hasUsedFreeTrial': instance.hasUsedFreeTrial,
      'subscriptionDate': instance.subscriptionDate,
      'isDeleted': instance.isDeleted,
    };