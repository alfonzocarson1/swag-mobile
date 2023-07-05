
import 'dart:convert';

import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/api/api_service.dart';

import 'package:swagapp/modules/data/paywall/i_paywall_service.dart';
import 'package:swagapp/modules/models/paywall/subscription_change_status.dart';
import 'package:swagapp/modules/models/paywall/subscription_status_response.dart';
import 'package:http/http.dart' as http;


class PaywallService extends IPaywallService{
  PaywallService(this.apiService);

  final APIService apiService;


  @override
  Future<PaywallSubscriptionResponse?> completeSubscription(PaywallSubscriptionRequest request) async {
    PaywallSubscriptionResponse response = await apiService.getEndpointData(
      endpoint: Endpoint.paywallSubscription, 
      method: RequestMethod.post,
      needBearer: true,
      body: request.toJson(),
      );
    return response;
  }
}