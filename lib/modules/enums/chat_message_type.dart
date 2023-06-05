enum ChatMessageType {

  image('image'),
  video('video'),
  text('text');

  final String textValue;  
  const ChatMessageType(this.textValue);
}
