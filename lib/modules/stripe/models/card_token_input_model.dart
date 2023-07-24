class CardTokenInputModel {
  String? cardNumber;
  String? cvc;
  String? expYear;
  String? expMonth;

  CardTokenInputModel({this.cardNumber, this.cvc, this.expYear, this.expMonth});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['card[exp_month]'] = expMonth;
    data["card[exp_year]"] = expYear;
    data["card[cvc]"] = cvc;
    data["card[number]"] = cardNumber;
    return data;
  }
}
