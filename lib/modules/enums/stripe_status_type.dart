enum StripeStatusType {
  verified('verified'),
  unverified('unverified'),
  consentDeclined('consent_declined'),
  failed('failed'),
  unsupported('unsupported');

  final String textValue;
  const StripeStatusType(this.textValue);
}
