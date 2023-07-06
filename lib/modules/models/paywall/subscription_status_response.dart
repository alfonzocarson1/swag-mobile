import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_status_response.freezed.dart';
part 'subscription_status_response.g.dart';

@freezed
class PaywallSubscriptionResponse with _$PaywallSubscriptionResponse {
  @JsonSerializable()
  const factory PaywallSubscriptionResponse({
    required final String accountId,
    required final String profileSubscriptionId,
    required final String transactionId,
    required final bool hasActiveSubscription,
    required final bool hasUsedFreeTrial,
    required final String subscriptionDate,
    required final bool isDeleted,

  }) = _PaywallSubscriptionResponse;

  factory PaywallSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$PaywallSubscriptionResponseFromJson(json);
}
