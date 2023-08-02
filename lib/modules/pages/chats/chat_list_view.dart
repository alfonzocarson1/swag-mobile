import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/pages/chats/widgets/chat_list_appbar.dart';
import 'package:swagapp/modules/pages/chats/widgets/chats_contacts.dart';
import '../../common/utils/palette.dart';
import '../../cubits/chat/chat_cubit.dart';
import '../../di/injector.dart';


class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {

  @override
  void initState() {
    super.initState();
    getIt<ChatCubit>().loadGroupChannels();
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
     onWillPop: () async {
      context.read<ChatCubit>().loadGroupChannels();
      return true;
    },
      child: Scaffold(
        backgroundColor: Palette.current.primaryNero,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Palette.current.primaryNeonGreen,
              size: 24,
            ),
            onPressed: () {
            //  getIt<ListingProfileCubit>().loadResults();
              Navigator.pop(context);
            }) ,
          title:const  AppBarTitle(),
        ),
        body: BlocBuilder<ChatCubit, ChatState>(
            buildWhen: (previous, current) {
          return current is! ChatsLoaded && current is !HasUnreadMessages && current is !LoadingFile;
        },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => const Center(child: Text('Welcome to the group chats page')),
              loadingChats: () => const Center(child: SimpleLoader()),
              loadedChatChannels: (channels) => ListView.builder(
                itemCount: channels.length,
                itemBuilder: (context, index) {
                  final channel = channels[index];
            
                  final lastMessage = channel.lastMessage?.message ?? 'No messages yet';
                  ChatData chatData = ChatData(messages: messages, channel: channel);
                  return ChatsContact(lastMessage: lastMessage, chatData: chatData);

          }),
              error: (errorMessage) => Center(child: Text('Error: $errorMessage')), orElse: () { return Container(); },
            );
          },
        ),
    
      ),
    );
  }
}