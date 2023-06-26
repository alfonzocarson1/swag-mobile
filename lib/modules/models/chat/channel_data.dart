
import 'dart:convert';


class ChannelData {

  String listingProductName;
  String buyerUsername;
  String listingImageUrl;
  double price;
  String productItemId;
  PaymentMethod paymentMethod;
  String buyerAccountId;

  ChannelData({
    required this.listingProductName,
    required this.listingImageUrl,
    required this.buyerUsername,
    required this.price,
    required this.productItemId,
    required this.paymentMethod,
    required this.buyerAccountId,
  });

  factory ChannelData.fromJson(Map<String, dynamic> json) => ChannelData(
    listingProductName: json["listingProductName"],
    listingImageUrl: json.containsKey('listingImageUrl') ? json["listingImageUrl"] : '',
    buyerUsername: json.containsKey('buyerUsername') ? json["buyerUsername"] : '',
    price: json["price"],
    productItemId: json["productItemId"],
    paymentMethod: json.containsKey('paymentMethod') ? PaymentMethod.fromJson(json["paymentMethod"]) : PaymentMethod(),
    buyerAccountId: json.containsKey('buyerUsername') ? json["buyerAccountId"] : '',
  );

  static ChannelData channelDataFromJson(String str) => ChannelData.fromJson(json.decode(str));
}

class PaymentMethod {

  final String payPalEmail;
  final String cashTag;
  final String venmoUser;

  PaymentMethod({
    this.cashTag ='', 
    this.venmoUser ='', 
    this.payPalEmail = '',
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => PaymentMethod(
    payPalEmail: (json.containsKey('payPalEmail')) ? json["payPalEmail"] : '',
    venmoUser:  (json.containsKey('venmoUser')) ? json["venmoUser"] : '',
    cashTag: (json.containsKey('cashTag')) ? json["cashTag"] : '',
  );
}
