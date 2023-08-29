import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/api/app_config.dart';

import 'api.dart';
import 'api_service.dart';

part 'stripe_api.freezed.dart';

part 'stripe_api.g.dart';

class StripeApi {
  final AppConfig config;
  final APIService apiService;

  StripeApi(this.config, this.apiService);

  Map<String, String> headers({String? key}) {
    return {
      "Content-Type": "application/x-www-form-urlencoded",
      "Authorization": "Bearer ${key ?? config.stripeKey}",
      "Stripe-Version": "2023-08-16",
    };
  }

  Future<String> createToken(CardTokenRequest payload) async {
    final response = await http
        .post(
      Uri.parse('https://api.stripe.com/v1/tokens'),
      headers: headers(),
      body: payload.toJson(),
    )
        .then((httpRes) {
      if (httpRes.statusCode != 200) {
        throw StripeError.fromJson(json.decode(httpRes.body));
      }
      return httpRes;
    }).then((httpRes) => CardTokenResponse.fromJson(json.decode(httpRes.body)));

    return response.id;
  }

  Future<List<CardObject>> getCards() async {
    final customerAccess = await paymentCustomerAccess();
    final customerId = customerAccess.customerIdForKey;
    final response = await http
        .get(
      Uri.parse('https://api.stripe.com/v1/customers/$customerId/sources')
          .replace(
        queryParameters: {
          "object": "card",
          "limit": "100",
        },
      ),
      headers: headers(
        key: customerAccess.ephemeralKey,
      ),
    )
        .then((httpRes) {
      if (httpRes.statusCode != 200) {
        debugPrint(httpRes.body);
        throw StripeError.fromJson(json.decode(httpRes.body));
      }
      return httpRes;
    }).then((httpRes) => CardObject.fromJsonList(json.decode(httpRes.body)));

    return response;
  }

  Future<dynamic> addPaymentMethod(String token) async {
    return await apiService.getEndpointData(
      endpoint: Endpoint.addPaymentMethod,
      needBearer: true,
      method: RequestMethod.post,
      dynamicParam: token,
      fromJson: (json) => json,
    );
  }

  Future<CustomerAccess> paymentCustomerAccess() async {
    return await apiService.getEndpointData(
      endpoint: Endpoint.paymentCustomerAccess,
      needBearer: true,
      method: RequestMethod.get,
      fromJson: (json) => CustomerAccess.fromJson(json),
    );
  }
}

class StripeErrors {
  static const INVALID_CARD = 'incorrect_number';
  static const INVALID_EXPIRY_MONTH = "invalid_expiry_month";
  static const INVALID_EXPIRY_YEAR = 'invalid_expiry_year';
  static const INVALID_CVC = 'invalid_cvc';
}

@freezed
class CardTokenRequest with _$CardTokenRequest {
  const factory CardTokenRequest({
    @JsonKey(name: "card[exp_month]") required String expMonth,
    @JsonKey(name: "card[exp_year]") required String expYear,
    @JsonKey(name: "card[number]") required String number,
    @JsonKey(name: "card[cvc]") required String cvc,
    @JsonKey(name: "card[name]") String? name,
    @JsonKey(name: "card[address_line1]") String? addressLine1,
    @JsonKey(name: "card[address_line2]") String? addressLine2,
    @JsonKey(name: "card[address_city]") String? addressCity,
    @JsonKey(name: "card[address_state]") String? addressState,
    @JsonKey(name: "card[address_zip]") String? addressZip,
    @JsonKey(name: "card[address_country]") String? addressCountry,
  }) = _CardTokenRequest;

  factory CardTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$CardTokenRequestFromJson(json);
}

@freezed
class CardTokenResponse with _$CardTokenResponse {
  const factory CardTokenResponse({
    required String id,
  }) = _CardTokenResponse;

  factory CardTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$CardTokenResponseFromJson(json);
}

@freezed
class StripeError with _$StripeError {
  const factory StripeError({
    required String? code,
    required String? message,
  }) = _StripeError;

  factory StripeError.fromJson(Map<String, dynamic> json) =>
      _$StripeErrorFromJson(json);
}

@freezed
class CustomerAccess with _$CustomerAccess {
  const factory CustomerAccess({
    required bool paymentCustomerSetup,
    String? ephemeralKey,
    String? customerIdForKey,
  }) = _CustomerAccess;

  factory CustomerAccess.fromJson(Map<String, dynamic> json) =>
      _$CustomerAccessFromJson(json);
}

@freezed
class CardObject with _$CardObject {
  const factory CardObject({
    String? id,
    String? last4,
    String? brand,
  }) = _CardObject;

  factory CardObject.fromJson(Map<String, dynamic> json) =>
      _$CardObjectFromJson(json);

  static List<CardObject> fromJsonList(List<dynamic> jsonList) => jsonList
      .cast<Map<String, dynamic>>()
      .map((json) => CardObject.fromJson(json))
      .toList();
}
