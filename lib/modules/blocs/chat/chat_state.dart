part of 'chat_bloc.dart';

@immutable
class ChatState {

  final User? myUser;
  final bool isLoadingFile;
  final List<ChatData> chats;

  ChatState({
    this.myUser,
    List<ChatData>? chats,
    this.isLoadingFile = false,
  }) : this.chats = chats ?? [];

  ChatState copyWith({
    User? myUser,
    bool? isLoadingFile,
    List<ChatData>? chats,
  })=> ChatState(
    chats: chats ?? this.chats,
    myUser: myUser ?? this.myUser,
    isLoadingFile: isLoadingFile ?? this.isLoadingFile,
  );
}

