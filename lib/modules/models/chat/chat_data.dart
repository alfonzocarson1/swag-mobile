import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

class ChatData {

  final List<BaseMessage> messages;
  final GroupChannel channel;

  ChatData({
    required this.messages, 
    required this.channel,
  });

  Map<String, dynamic> toJson() => {
    "themes": List<String>.from(messages.map((x) => x)),
    "types": channel,
  };  
}
