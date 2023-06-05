import 'dart:convert';


class SendBirdChannelData {

  String listingProductName;
  String topicId;

  SendBirdChannelData({
    required this.listingProductName,
    required this.topicId,
  });

  factory SendBirdChannelData.fromJson(Map<String, dynamic> json) => SendBirdChannelData(
    listingProductName: json["listingProductName"],
    topicId: json["topicId"],
  );
  
  static SendBirdChannelData sendBirdChannelDataFromJson(String str) => SendBirdChannelData.fromJson(json.decode(str));
}
