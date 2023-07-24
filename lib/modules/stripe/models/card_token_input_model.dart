class CardTokenInputModel {
  String? cardNumber;
  String? cvc;
  String? expYear;
  String? expMonth;
  String? name;
  String? address1;
  String? address2;
  String? country;
  String? city;
  String? zip;
  String? state;
  String? phone;
  String? email;

  CardTokenInputModel(
      {this.cardNumber,
      this.cvc,
      this.expYear,
      this.expMonth,
      this.name,
      this.address1,
      this.address2,
      this.country,
      this.city,
      this.zip,
      this.state,
      this.phone,
      this.email
      });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['card[exp_month]'] = expMonth;
    data["card[exp_year]"] = expYear;
    data["card[cvc]"] = cvc;
    data["card[number]"] = cardNumber;
    data["card[name]"] = name;
    data["card[address_line1]"] = address1;
    data["card[address_line2]"] = address2;
    data["card[address_country]"] = country;
    data["card[address_city]"] = city;
    data["card[address_zip]"] = zip;
    data["card[address_state]"] = state;
    return data;
  }
}
