class AvatorModel {
  String? id;
  String? url;

  AvatorModel({this.id, this.url});

  AvatorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['url'] = this.url;
    return data;
  }
}
