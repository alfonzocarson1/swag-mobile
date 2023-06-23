enum ChatMessageDataType {
  
  confirmPaidSend('confirm_paid_send'),
  confirmPaymentReceived('confirm_payment_received'),
  confirmShip('confirm_ship'),
  message('message');

  final String textValue;  

  const ChatMessageDataType(this.textValue);
}

