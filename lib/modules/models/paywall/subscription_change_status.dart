import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_change_status.freezed.dart';
part 'subscription_change_status.g.dart';


@freezed
class PaywallSubscriptionRequest with _$PaywallSubscriptionRequest {
  @JsonSerializable()
  const factory PaywallSubscriptionRequest({
    required final String accountId,
    required final String transactionID,
    required final String deviceType,

  }) = _PaywallSubscriptionRequest;

  factory PaywallSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$PaywallSubscriptionRequestFromJson(json);
}
