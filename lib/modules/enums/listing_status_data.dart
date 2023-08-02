enum ListingStatusDataType {
  listed('listed'),
  pendingPayment('pendingPayment'),
  paid('paid'),
  paymentReceived('paymentReceived'),
  pendingSellerConfirmation('pendingSellerConfirmation'),
  shipped('shipped'),
  received('received');

  final String textValue;

  const ListingStatusDataType(this.textValue);
}
