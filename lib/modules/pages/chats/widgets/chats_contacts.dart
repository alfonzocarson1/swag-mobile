import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:swagapp/modules/models/chat/sendbird_channel_data.dart';

import '../../../constants/constants.dart';
import '../../../di/injector.dart';

class ChatsContact extends StatelessWidget {

  final String lastMessage;
  final ChatData chatData;

  const ChatsContact({
    super.key,
    required this.lastMessage, 
    required this.chatData,
  });

  @override
  Widget build(BuildContext context) {
    ProfileModel userProfile = getIt<PreferenceRepositoryService>().profileData();
    String userName = userProfile.username;

    int unreadMessages = this.chatData.channel.unreadMessageCount;
    bool hasUreadMessages = unreadMessages > 0;
    SendBirdChannelData channelData = this.getChannelData();
    List<Member> chatMembers = this.chatData.channel.members;
    Member seller = chatMembers.where((Member member) => member.nickname != userName && member.nickname != swagBotNickName).toList().first;

        
    return ListTile(            
      leading: _Avatar(
        hasUreadMessages: hasUreadMessages, 
        chatData: this.chatData,
      ),
      title: Text(
        '@${seller.nickname.capitalize()} - ${channelData.listingProductName}',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontWeight: (hasUreadMessages) ? FontWeight.w300 : FontWeight.w300,
          fontSize: 20,
          color: (hasUreadMessages) ? Colors.white : Palette.current.grey,
        ),
      ),
      subtitle: Text(
        this.lastMessage,
        maxLines: 1,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 15,
          letterSpacing: 0.3,
          color: Palette.current.grey,
          overflow: TextOverflow.ellipsis
        ),
      ),
      onTap: ()=> Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (BuildContext context)=> ChatPage(chatData: this.chatData, userName: userName, sellerNickName: seller.nickname),
        ),
      ),
    );
  }

  SendBirdChannelData  getChannelData() {

    if(this.chatData.channel.data!.isNotEmpty) {

      String stringData = json.encode(this.chatData.channel.data!.replaceAll("'", '"'));
      String formatedData = stringData.replaceAll('\\', "");
      Map<String, dynamic> data  = json.decode(formatedData.substring(1, formatedData.length - 1));

      return SendBirdChannelData.fromJson(data);
    }
    else {
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

    bool isCoverChannelNull = this.chatData.channel.coverUrl == null;

    return CircleAvatar(
      backgroundColor: (this.hasUreadMessages) 
      ? Palette.current.primaryNeonPink
      : Colors.transparent,
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: this.chatData.channel.coverUrl!,
            ),  
          ),
        )
    );
  }
}

