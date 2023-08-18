
import 'package:flutter/material.dart';
import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/api/api_service.dart';
import 'package:swagapp/modules/data/paywall/i_paywall_service.dart';
import 'package:swagapp/modules/models/paywall/subscription_change_status.dart';
import 'package:swagapp/modules/models/paywall/subscription_status_response.dart';


class PaywallService extends IPaywallService {
  PaywallService(this.apiService);

  final APIService apiService;

  @override
  Future<PaywallSubscriptionResponse?> completeSubscription(
      PaywallSubscriptionRequest request) async {


    PaywallSubscriptionResponse response = await apiService.getEndpointData(
      method: RequestMethod.post,
      endpoint: Endpoint.paywallSubscription,
      needBearer: true,
      body: {
        "accountId": request.accountId,
        "transactionId": request.transactionID,
        "deviceId": request.deviceType
      },
      fromJson: (json) => PaywallSubscriptionResponse.fromJson(json),
    );


    return response;
  }
}
