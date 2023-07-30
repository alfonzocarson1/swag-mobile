enum ChatType {
  listing('listing_chat'),
  buyWorkflow('buy_listing_chat'),
  text('text'),
  notifyMessageBuyFlow('notifyMessageBuyFlow'),
  notifySale('notifySale'),
  notifyMe('notifyMe');

  final String textValue;
  const ChatType(this.textValue);
}
