// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardTokenRequest _$$_CardTokenRequestFromJson(Map<String, dynamic> json) =>
    _$_CardTokenRequest(
      expMonth: json['card[exp_month]'] as String,
      expYear: json['card[exp_year]'] as String,
      number: json['card[number]'] as String,
      cvc: json['card[cvc]'] as String,
      name: json['card[name]'] as String?,
      addressLine1: json['card[address_line1]'] as String?,
      addressLine2: json['card[address_line2]'] as String?,
      addressCity: json['card[address_city]'] as String?,
      addressState: json['card[address_state]'] as String?,
      addressZip: json['card[address_zip]'] as String?,
      addressCountry: json['card[address_country]'] as String?,
    );

Map<String, dynamic> _$$_CardTokenRequestToJson(_$_CardTokenRequest instance) =>
    <String, dynamic>{
      'card[exp_month]': instance.expMonth,
      'card[exp_year]': instance.expYear,
      'card[number]': instance.number,
      'card[cvc]': instance.cvc,
      'card[name]': instance.name,
      'card[address_line1]': instance.addressLine1,
      'card[address_line2]': instance.addressLine2,
      'card[address_city]': instance.addressCity,
      'card[address_state]': instance.addressState,
      'card[address_zip]': instance.addressZip,
      'card[address_country]': instance.addressCountry,
    };

_$_CardTokenResponse _$$_CardTokenResponseFromJson(Map<String, dynamic> json) =>
    _$_CardTokenResponse(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_CardTokenResponseToJson(
        _$_CardTokenResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_StripeError _$$_StripeErrorFromJson(Map<String, dynamic> json) =>
    _$_StripeError(
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_StripeErrorToJson(_$_StripeError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

_$_CustomerAccess _$$_CustomerAccessFromJson(Map<String, dynamic> json) =>
    _$_CustomerAccess(
      paymentCustomerSetup: json['paymentCustomerSetup'] as bool,
      ephemeralKey: json['ephemeralKey'] as String?,
      customerIdForKey: json['customerIdForKey'] as String?,
    );

Map<String, dynamic> _$$_CustomerAccessToJson(_$_CustomerAccess instance) =>
    <String, dynamic>{
      'paymentCustomerSetup': instance.paymentCustomerSetup,
      'ephemeralKey': instance.ephemeralKey,
      'customerIdForKey': instance.customerIdForKey,
    };

_$_CardObject _$$_CardObjectFromJson(Map<String, dynamic> json) =>
    _$_CardObject(
      id: json['id'] as String?,
      last4: json['last4'] as String?,
      brand: json['brand'] as String?,
    );

Map<String, dynamic> _$$_CardObjectToJson(_$_CardObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last4': instance.last4,
      'brand': instance.brand,
    };
