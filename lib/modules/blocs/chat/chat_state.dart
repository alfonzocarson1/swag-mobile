part of 'chat_bloc.dart';

@immutable
class ChatState {

  final User? myUser;
  final List<ChatData> chats;

  ChatState({
    this.myUser,
    List<ChatData>? chats,
  }) : this.chats = chats ?? [];

  ChatState copyWith({
    User? myUser,
    List<ChatData>? chats,
  })=> ChatState(
    myUser: myUser ?? this.myUser,
    chats: chats ?? this.chats,
  );
}

