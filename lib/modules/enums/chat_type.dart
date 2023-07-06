enum ChatType {

  listing('listing_chat'),
  buyWorkflow('buy_chat'),
  text('text');

  final String textValue;  
  const ChatType(this.textValue);
}
