enum ChatMessageDataType {
  confirmPaidSend('confirm_paid_send'),
  adminRequested('admin_requested'),
  paymentSend('payment_send'),
  confirmPaymentReceived('confirm_payment_received'),
  paymentReceived('payment_received'),
  confirmShip('confirm_ship'),
  shipped('shipped'),
  saleCanceled('sale_canceled'),
  message('message'),
  itemNotReceived('item_not_received');

  final String textValue;

  const ChatMessageDataType(this.textValue);
}
