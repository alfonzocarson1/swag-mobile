part of 'chat_bloc.dart';

@immutable
abstract class ChatEvent {}

class AddChatsEvent extends ChatEvent {

  final List<ChatData> chats;

  AddChatsEvent(this.chats);
}

class SetMyUser extends ChatEvent {

  final User user;

  SetMyUser(this.user);
}

class UpdateMessageEvent extends ChatEvent {

  final ChatData chatData;
  final UserMessage message;
  final List<ChatData> chats;

  UpdateMessageEvent({
    required this.chatData, 
    required this.message,
    required this.chats,
  });

  List<ChatData> getUpdatedChats() {

    List<ChatData> chats = this.chats;
    ChatData newChatData = this.chatData;
    int index = this.chats.indexOf(this.chatData);

    newChatData.messages.add(this.message);
    this.chats[index] = this.chatData;

    return chats;
  }
}
