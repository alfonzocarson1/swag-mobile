class StripeErrorModel {
  String? code;
  String? docUrl;
  String? message;
  String? param;
  String? requestLogUrl;
  String? type;

  StripeErrorModel(
      {this.code,
      this.docUrl,
      this.message,
      this.param,
      this.requestLogUrl,
      this.type});

  StripeErrorModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    docUrl = json['doc_url'];
    message = json['message'];
    param = json['param'];
    requestLogUrl = json['request_log_url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = this.code;
    data['doc_url'] = this.docUrl;
    data['message'] = this.message;
    data['param'] = this.param;
    data['request_log_url'] = this.requestLogUrl;
    data['type'] = this.type;
    return data;
  }
}
