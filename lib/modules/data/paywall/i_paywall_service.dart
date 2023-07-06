import 'package:swagapp/modules/models/paywall/subscription_status_response.dart';
import '../../models/paywall/subscription_change_status.dart';

abstract class IPaywallService {
  Future<PaywallSubscriptionResponse?> completeSubscription(PaywallSubscriptionRequest request);
  
}

