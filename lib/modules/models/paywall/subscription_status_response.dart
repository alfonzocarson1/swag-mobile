import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_status_response.freezed.dart';
part 'subscription_status_response.g.dart';

@freezed
class PaywallSubscriptionResponse with _$PaywallSubscriptionResponse {
  @JsonSerializable()
  const factory PaywallSubscriptionResponse({
    @Default("") String accountId,
    @Default("") String profileSubscriptionId,
    @Default("")  String transactionId,
    @Default(false)final bool hasActiveSubscription,
    @Default(false)final bool hasUsedFreeTrial,
    @Default("")final String subscriptionDate,
    @Default(false)final bool isDeleted,
    @Default("") String latestOrderId,
    @Default("") String subscriptionDateByGoogle,

  }) = _PaywallSubscriptionResponse;

  factory PaywallSubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$PaywallSubscriptionResponseFromJson(json);
}
