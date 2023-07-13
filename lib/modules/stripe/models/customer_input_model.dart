class CustomerInputModel {
  String name;
  String email;
  String phone;
  String city;
  String country;
  String line1;
  String line2;
  String postalCode;
  String state;

  CustomerInputModel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.city,
      required this.country,
      required this.line1,
      required this.line2,
      required this.postalCode,
      required this.state});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data["[address][city]"] = city;
    data["[address][country]"] = country;
    data["[address][line1]"] = line1;
    data["[address][line2]"] = line2;
    data["[address][postal_code]"] = postalCode;
    data["[address][state]"] = state;
    return data;
  }
}
