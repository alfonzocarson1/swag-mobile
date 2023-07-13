class PaymentMethodInputModel {
  String city;
  String country;
  String line1;
  String line2;
  String postalCode;
  String state;
  String email;
  String name;
  String phone;
  String expMonth;
  String expYear;
  String cvc;
  String cardNumber;

  PaymentMethodInputModel(
      {required this.city,
      required this.country,
      required this.line1,
      required this.line2,
      required this.postalCode,
      required this.state,
      required this.email,
      required this.name,
      required this.phone,
      required this.expMonth,
      required this.expYear,
      required this.cvc,
      required this.cardNumber});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = 'card';
    data["billing_details[address][city]"] = city;
    data["billing_details[address][country]"] = country;
    data["billing_details[address][line1]"] = line1;
    data["billing_details[address][line2]"] = line2;
    data["billing_details[address][postal_code]"] = postalCode;
    data["billing_details[address][state]"] = state;
    data["billing_details[email]"] = email;
    data["billing_details[name]"] = name;
    data["billing_details[phone]"] = phone;
    data['card[exp_month]'] = expMonth;
    data["card[exp_year]"] = expYear;
    data["card[cvc]"] = cvc;
    data["card[number]"] = cardNumber;
    return data;
  }
}
