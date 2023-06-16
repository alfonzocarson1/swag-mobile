import 'dart:convert';


class SendBirdPushMessage {

  int sqsTs;
  String customType;
  Channel channel;
  int createdAt;
  int messageId;
  String message;
  String type;
  int unreadMessageCount;
  dynamic pushTitle;
  String audienceType;
  String pushSound;
  Translations translations;
  Recipient recipient;
  List<dynamic> files;
  String category;
  String channelType;
  List<dynamic> mentionedUsers;
  String appId;

  SendBirdPushMessage({
      required this.sqsTs,
      required this.customType,
      required this.channel,
      required this.createdAt,
      required this.messageId,
      required this.message,
      required this.type,
      required this.unreadMessageCount,
      this.pushTitle,
      required this.audienceType,
      required this.pushSound,
      required this.translations,
      required this.recipient,
      required this.files,
      required this.category,
      required this.channelType,
      required this.mentionedUsers,
      required this.appId,
  });

  factory SendBirdPushMessage.fromJson(Map<String, dynamic> json) => SendBirdPushMessage(
    sqsTs: json["sqs_ts"],
    customType: json["custom_type"],
    channel: Channel.fromJson(json["channel"]),
    createdAt: json["created_at"],
    messageId: json["message_id"],
    message: json["message"],
    type: json["type"],
    unreadMessageCount: json["unread_message_count"],
    pushTitle: json["push_title"],
    audienceType: json["audience_type"],
    pushSound: json["push_sound"],
    translations: Translations.fromJson(json["translations"]),
    recipient: Recipient.fromJson(json["recipient"]),
    files: List<dynamic>.from(json["files"].map((x) => x)),
    category: json["category"],
    channelType: json["channel_type"],
    mentionedUsers: List<dynamic>.from(json["mentioned_users"].map((x) => x)),
    appId: json["app_id"],
  );

  static SendBirdPushMessage sendBirdPushMessageFromJson(String str) => SendBirdPushMessage.fromJson(json.decode(str));
}

class Channel {

  int channelUnreadMessageCount;
  String customType;
  String name;
  String channelUrl;

  Channel({
    required this.channelUnreadMessageCount,
    required this.customType,
    required this.name,
    required this.channelUrl,
  });

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
    channelUnreadMessageCount: json["channel_unread_message_count"],
    customType: json["custom_type"],
    name: json["name"],
    channelUrl: json["channel_url"],
  );
}

class Recipient {

  String name;
  String pushTemplate;
  String id;

  Recipient({
      required this.name,
      required this.pushTemplate,
      required this.id,
  });

  factory Recipient.fromJson(Map<String, dynamic> json) => Recipient(
    name: json["name"],
    pushTemplate: json["push_template"],
    id: json["id"],
  );
}

class Translations {

  Translations();

  factory Translations.fromJson(Map<String, dynamic> json) => Translations();
}
