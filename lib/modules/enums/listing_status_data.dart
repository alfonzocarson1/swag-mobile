enum ListingStatusDataType {
  listed('listed'),
  pendingPayment('pendingPayment'),
  paid('paid'),
  paymentReceived('paymentReceived'),
  shipped('shipped'),
  received('received');

  final String textValue;

  const ListingStatusDataType(this.textValue);
}
