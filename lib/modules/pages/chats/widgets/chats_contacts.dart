import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

import 'package:swagapp/modules/common/ui/custom_list_tile.dart';
import 'package:swagapp/modules/common/utils/sendbird_utils.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/cubits/chat/chat_cubit.dart';

import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/enums/chat_type.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:swagapp/modules/models/chat/sendbird_channel_data.dart';

import 'package:swagapp/modules/pages/chats/widgets/time_stamp_converter.dart';

import '../../../constants/constants.dart';
import '../../../di/injector.dart';
import '../../../models/chat/message_data.dart';
import '../../chat/chatPage.dart';


 String lastBuyChatMessage = "";
 List BuyChannelMessages = [];

class ChatsContact extends StatefulWidget {
  final String lastMessage;
  final ChatData chatData;


  const ChatsContact({
    super.key,
    required this.lastMessage,
    required this.chatData,
  });

  @override
  State<ChatsContact> createState() => _ChatsContactState();
}

class _ChatsContactState extends State<ChatsContact> {

  
   @override
   void initState() {
     super.initState();
   }
  
 

  getChannelMessages()async{
  if(this.widget.chatData.channel.customType != ChatType.listing.textValue && BuyChannelMessages.isEmpty){
    BuyChannelMessages = await getIt<ChatCubit>().loadMessages(widget.chatData.channel);
  }
   
  }

  @override
  Widget build(BuildContext context) {
  
   
    ProfileModel userProfile =
        getIt<PreferenceRepositoryService>().profileData();
    String userName = userProfile.username;

    int unreadMessages = this.widget.chatData.channel.unreadMessageCount;
    bool hasUreadMessages = unreadMessages > 0;
    SendBirdChannelData channelData = this.getChannelData();
    List<Member> chatMembers = this.widget.chatData.channel.members;
    Member otherUser = chatMembers
        .where((Member member) =>
            member.nickname != userName && member.nickname != swagBotNickName)
        .toList()
        .first;
    String lastActivityTimeStamp = TimeStampConverter().calculateTime(this.widget.chatData.channel.lastMessage?.createdAt ?? 0);
               
    return CustomListTile(
      titleSpacing: 5,
      widgetSpacing: 20,
      trailing:(lastActivityTimeStamp != "") ? Text(lastActivityTimeStamp,  style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14,
            letterSpacing: 0.3,
            color: Palette.current.grey,
            overflow: TextOverflow.ellipsis),) :  SizedBox(width: MediaQuery.of(context).size.width * 0.18,),
      leading: _Avatar(
        hasUreadMessages: hasUreadMessages,
        chatData: this.widget.chatData,
      ),
      title: Text(
        (otherUser.nickname.isNotEmpty) ? '@${otherUser.nickname.capitalize()} - ${channelData.listingProductName}' : "",
          overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight:
                  (hasUreadMessages) ? FontWeight.w300 : FontWeight.w300,
              fontSize: 16,
              color: (hasUreadMessages) ? Colors.white : Palette.current.grey,
            ),
      ),
      subtitle: Text(
       this.widget.lastMessage ,
        maxLines: 1,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14,
            letterSpacing: 0.3,
            color: Palette.current.grey,
            overflow: TextOverflow.ellipsis),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => ChatPage(channel: widget.chatData.channel,),
          settings: const RouteSettings(name: '/ChatPage')
        ),
      ), 
    );
  }

  SendBirdChannelData getChannelData() {
    if (this.widget.chatData.channel.data.isNotEmpty) {
      String stringData =
          json.encode(this.widget.chatData.channel.data.replaceAll("'", '"'));
      String formatedData = stringData.replaceAll('\\', "");
      Map<String, dynamic> data =
          json.decode(formatedData.substring(1, formatedData.length - 1));

      return SendBirdChannelData.fromJson(data);
    } else {
      return SendBirdChannelData(topicId: '', listingProductName: '');
    }
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    super.key,
    required this.hasUreadMessages,
    required this.chatData,
  });

  final bool hasUreadMessages;
  final ChatData chatData;

  @override
  Widget build(BuildContext context) {
    bool isCoverChannelNull = this.chatData.channel.coverUrl.isEmpty;

    return CircleAvatar(
        backgroundColor: (
          this.chatData.channel.customType == ChatType.listing.textValue)
            ? Palette.current.primaryNeonPink
            : Palette.current.primaryNeonGreen,
        maxRadius: 22,
        child: (isCoverChannelNull)
            ? Image.asset(
                AppImages.avatar,
                scale: 2.5,
              )
            : Container(
                margin: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: CachedNetworkImage(
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    imageUrl: this.chatData.channel.coverUrl,
                  ),
                ),
              ));
  }
}
