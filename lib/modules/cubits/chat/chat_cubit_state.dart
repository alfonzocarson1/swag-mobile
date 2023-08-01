part of 'chat_cubit.dart';


@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loadingChats() =  ChatsLoading;
  const factory ChatState.loadedChats(List<BaseMessage> messages) =  ChatsLoaded;
  const factory ChatState.loadedChatChannels(List<GroupChannel> channels) =  ChatChannelsLoaded;
  const factory ChatState.hasUnreadMessages(bool hasUnreadMessages, int unreadMessageCount) = HasUnreadMessages;   
  const factory ChatState.error(String errorMessage) = ChatsError;
  const factory ChatState.loadingFile(int sentBytes, int totalBytes) = LoadingFile;
}
