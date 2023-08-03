import 'dart:convert';

class MessageData {
  String topicId;
  Payload payload;
  String type;

  MessageData({
    required this.topicId,
    required this.payload,
    required this.type,
  });

  factory MessageData.fromJson(Map<String, dynamic> json) => MessageData(
        topicId: json["topicId"],
        payload: Payload.fromJson(json["payload"]),
        type: json["type"],
      );

  MessageData messageDataFromJson(String str) =>
      MessageData.fromJson(json.decode(str));
}

class Payload {
  Address address;
  String productId;
  PaymentMethod paymentMethod;
  PaymentMethod paymentMethodOption;
  String userNameSeller;
  String userNameBuyer;
  String trackingNumber;
  double listingPrice;
  String listingStatus;
  String listingName;
  String? nameBuyer;
  String? lastNameBuyer;

  Payload(
      {required this.address,
      required this.trackingNumber,
      required this.productId,
      required this.paymentMethod,
      required this.paymentMethodOption,
      required this.userNameSeller,
      required this.userNameBuyer,
      required this.listingPrice,
      required this.listingStatus,
      required this.listingName,
      this.nameBuyer,
      this.lastNameBuyer});

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        address: Address.fromJson(json["address"]),
        trackingNumber:
            (json.containsKey('trackingNumber')) ? json["trackingNumber"] : '',
        productId: json["productId"],
        paymentMethod: PaymentMethod.fromJson(json["PaymentMethod"]),
        paymentMethodOption: (json.containsKey('PaymentMethodOption')) ?
            PaymentMethod.fromJson(json["PaymentMethodOption"]) : PaymentMethod(),
        userNameSeller: json["userNameSeller"],
        userNameBuyer: json["userNameBuyer"],
        listingPrice: json["listingPrice"],
        listingStatus: json["listingStatus"],
        listingName: json["listingName"],
        nameBuyer: json["nameBuyer"],
        lastNameBuyer: json["lastNameBuyer"],
      );
}

class Address {
  String addressType;
  String? firstName;
  String? lastName;
  String? country;
  String address1;
  String address2;
  String city;
  String state;
  String postalCode;

  Address({
    this.firstName,
    this.lastName,
    this.country,
    required this.addressType,
    required this.address1,
    required this.address2,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        addressType: json["addressType"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        country: json["country"],
        address1: json["address1"],
        address2: json["address2"],
        city: json["city"],
        state: json["state"],
        postalCode: json["postalCode"],
      );
}

class PaymentMethod {
  final String payPalEmail;
  final String cashTag;
  final String venmoUser;

  PaymentMethod({
    this.cashTag = '',
    this.venmoUser = '',
    this.payPalEmail = '',
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => PaymentMethod(
        payPalEmail:
            (json.containsKey('payPalEmail')) ? json["payPalEmail"] : '',
        venmoUser: (json.containsKey('venmoUser')) ? json["venmoUser"] : '',
        cashTag: (json.containsKey('cashTag')) ? json["cashTag"] : '',
      );
}
