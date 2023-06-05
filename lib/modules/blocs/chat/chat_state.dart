part of 'chat_bloc.dart';

@immutable
class ChatState {

  final User? myUser;
  final bool isLoadingFile;
  final List<ChatData> chats;
  final List<CachedVideoPlayerController> videoChatControllers;

  ChatState({
    this.myUser,
    List<ChatData>? chats,
    List<CachedVideoPlayerController>? videoChatControllers,
    this.isLoadingFile = false,
  }) : 
    this.chats = chats ?? [],
    this.videoChatControllers = videoChatControllers ?? [];

  ChatState copyWith({
    User? myUser,
    bool? isLoadingFile,
    List<ChatData>? chats,
    List<CachedVideoPlayerController>? videoChatControllers,
  })=> ChatState(
    chats: chats ?? this.chats,
    myUser: myUser ?? this.myUser,
    isLoadingFile: isLoadingFile ?? this.isLoadingFile,
    videoChatControllers: videoChatControllers ?? this.videoChatControllers,
  );
}

