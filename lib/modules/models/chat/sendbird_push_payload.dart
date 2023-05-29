import 'dart:convert';

class SendBirdPushPayload {

  String category;
  String type;
  String message;
  String customType;
  int messageId;
  int createdAt;
  String appId;
  int unreadMessageCount;
  Channel channel;
  String channelType;
  Sender sender;
  Recipient recipient;
  List<dynamic>? files;
  Translations translations;
  String pushTitle;
  String pushSound;
  String audienceType;
  MentionedUsers mentionedUsers;

  SendBirdPushPayload({
    required this.category,
    required this.type,
    required this.message,
    required this.customType,
    required this.messageId,
    required this.createdAt,
    required this.appId,
    required this.unreadMessageCount,
    required this.channel,
    required this.channelType,
    required this.sender,
    required this.recipient,
    required this.translations,
    required this.pushTitle,
    required this.pushSound,
    required this.audienceType,
    required this.mentionedUsers,
    this.files,
  });

  factory SendBirdPushPayload.fromJson(Map<String, dynamic> json) => SendBirdPushPayload(
    category: json["category"],
    type: json["type"],
    message: json["message"],
    customType: json["custom_type"],
    messageId: json["message_id"],
    createdAt: json["created_at"],
    appId: json["app_id"],
    unreadMessageCount: json["unread_message_count"],
    channel: Channel.fromJson(json["channel"]),
    channelType: json["channel_type"],
    sender: Sender.fromJson(json["sender"]),
    recipient: Recipient.fromJson(json["recipient"]),
    files: List<dynamic>.from(json["files"].map((x) => x)),
    translations: Translations.fromJson(json["translations"]),
    pushTitle: json["push_title"],
    pushSound: json["push_sound"],
    audienceType: json["audience_type"],
    mentionedUsers: MentionedUsers.fromJson(json["mentioned_users"]),
  );

  static SendBirdPushPayload sendBirdPushPayloadFromJson(String str) => SendBirdPushPayload.fromJson(json.decode(str));
}

class Channel {

  String channelUrl;
  String name;
  String customType;
  int channelUnreadCount;

  Channel({
    required this.channelUrl,
    required this.name,
    required this.customType,
    required this.channelUnreadCount,
  });

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
    channelUrl: json["channel_url"],
    name: json["name"],
    customType: json["custom_type"],
    channelUnreadCount: json["channel_unread_count"],
  );
}

class MentionedUsers {

  String userId;
  String nickname;
  String profileUrl;
  bool requireAuthForProfileImage;

  MentionedUsers({
    required this.userId,
    required this.nickname,
    required this.profileUrl,
    required this.requireAuthForProfileImage,
  });

  factory MentionedUsers.fromJson(Map<String, dynamic> json) => MentionedUsers(
    userId: json["user_id"],
    nickname: json["nickname"],
    profileUrl: json["profile_url"],
    requireAuthForProfileImage: json["require_auth_for_profile_image"],
  );
}

class Recipient {

  String id;
  String name;

  Recipient({
    required this.id,
    required this.name,
  });

  factory Recipient.fromJson(Map<String, dynamic> json) => Recipient(
    id: json["id"],
    name: json["name"],
  );
}

class Sender {
  String id;
  String name;
  String profileUrl;
  bool requireAuthForProfileImage;
  Translations metadata;

  Sender({
    required this.id,
    required this.name,
    required this.profileUrl,
    required this.requireAuthForProfileImage,
    required this.metadata,
  });

  factory Sender.fromJson(Map<String, dynamic> json) => Sender(
    id: json["id"],
    name: json["name"],
    profileUrl: json["profile_url"],
    requireAuthForProfileImage: json["require_auth_for_profile_image"],
    metadata: Translations.fromJson(json["metadata"]),
  );
}

class Translations {

  Translations();

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
  );

  Map<String, dynamic> toJson() => {
  };
}