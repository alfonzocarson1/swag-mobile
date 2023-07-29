// import 'package:dash_chat_2/dash_chat_2.dart';
// import 'package:flutter/material.dart';
// import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

// import '../../../common/utils/sendbird_utils.dart';
// import '../../../enums/chat_type.dart';
// import '../../../models/chat/channel_data.dart';
// import '../../chat/widgets/chat_commence_banner.dart';

// class MessageRowBuilder extends StatelessWidget {
//   const MessageRowBuilder({super.key, required this.message,required this.isAfterDateSeparator, required this.isBeforeDateSeparator , required this.user, required this.channel});
//   final ChatMessage message;
//   final GroupChannel channel;
//   final bool isAfterDateSeparator;
//   final bool isBeforeDateSeparator;
//   final ChatUser user;
  
//     ChannelData getChannelData() {
//     Map<String, dynamic> channelDataJson =
//         SendBirdUtils.getFormatedData(channelDataString);
//     ChannelData channelData = ChannelData.fromJson(channelDataJson);

//     return channelData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (message.text.contains('Banner')) {
//     return ChatCommenceBanner(channelData: getChannelData(), isListingChat: this.channel.customType == ChatType.listing.textValue,);
//   }
// }