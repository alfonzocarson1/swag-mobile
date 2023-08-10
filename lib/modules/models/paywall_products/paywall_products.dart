import 'package:freezed_annotation/freezed_annotation.dart';

part 'paywall_products.freezed.dart';
part 'paywall_products.g.dart';


@freezed
class PaywallSubscriptionProducts with _$PaywallSubscriptionProducts {
  @JsonSerializable()
  const factory PaywallSubscriptionProducts({
    required final String annualSubscription,
    required final String monthlySubscription,


  }) = _PaywallSubscriptionProducts;

  factory PaywallSubscriptionProducts.fromJson(Map<String, dynamic> json) =>
      _$PaywallSubscriptionProductsFromJson(json);
}
