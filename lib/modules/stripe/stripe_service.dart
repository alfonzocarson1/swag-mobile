import 'package:http/http.dart' as http;
import 'package:swagapp/modules/stripe/models/customer_input_model.dart';
import 'package:swagapp/modules/stripe/models/payment_method_input_model.dart';
import 'constants.dart';

class StripeService {
  final headers = {
    "Content-Type": "application/x-www-form-urlencoded",
    "Authorization": "Bearer $stripeApiKey"
  };

  Future<http.Response> createPaymentMethod(
      PaymentMethodInputModel paymentMethodInputModel) async {
    final body = paymentMethodInputModel.toJson();
    final response = await http.post(Uri.parse(createPaymentMethodUrl),
        headers: headers, body: body);
        
    return response;
  }

  Future<http.Response> createCustomer(
      CustomerInputModel customerInputModel) async {
    final body = customerInputModel.toJson();
    final response = await http.post(Uri.parse(createCustomerUrl),
        headers: headers, body: body);

    return response;
  }

  Future<http.Response> attachPaymentMethod(
      {required String customerId, required String paymentMethodId}) async {
    final body = {"customer": customerId};
    final response = await http.post(
        Uri.parse('$attachPaymentMethodUrl$paymentMethodId/attach'),
        headers: headers,
        body: body);

    return response;
  }
}
