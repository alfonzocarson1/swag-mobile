import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import '../common/utils/token_retry_policy.dart';
import 'api.dart';

enum RequestMethod {
  get,
  post,
  put,
}

class APIService {
  APIService();

  Future getEndpointData<T>(
      {required Endpoint endpoint,
      required RequestMethod method,
      T Function(Map<String, dynamic> json)? fromJson,
      String? jsonKey,
      bool? needJsonBody = true,
      Map<String, Object>? params,
      Map<String, dynamic>? body,
      Map<String, String>? headers,
      bool needBearer = true,
      String? dynamicParam}) async {
    InterceptedClient client = InterceptedClient.build(
      retryPolicy: TokenRetryPolicy(),
      interceptors: [ApiInterceptor()],
    );
    String? token = '';
    if (needBearer) {
      token = "";
      // TODO await getIt<StorageRepositoryService>().getAccessToken();
    }

    final api = API();
    http.Response? response;
    var uri = api.endpointUri(endpoint, dynamicParam: dynamicParam);

    var baseHeaders = needBearer
        ? {
            "Content-Type": "application/json",
            HttpHeaders.authorizationHeader: 'Bearer $token',
          }
        : {
            "Content-Type": "application/json",
          };

    if (params != null) {
      uri = uri.replace(queryParameters: params);
    }

    if (headers != null) {
      baseHeaders.addAll(headers);
    }
    try {
      switch (method) {
        case RequestMethod.get:
          response =
              await client.get(Uri.parse(uri.toString()), headers: baseHeaders);
          break;
        case RequestMethod.post:
          response = await client.post(
            Uri.parse(uri.toString()),
            headers: baseHeaders,
            body: jsonEncode(body),
          );
          break;
        case RequestMethod.put:
          response = await client.put(
            Uri.parse(uri.toString()),
            headers: baseHeaders,
            body: jsonEncode(body),
          );
          break;
      }
      if (response.statusCode == 200 || response.statusCode == 201) {
        dynamic res;
        try {
          if (jsonKey != null) {
            final rawList = jsonDecode(response.body);
            res = fromJson!({jsonKey: rawList});
          } else {
            res = fromJson!(json.decode(response.body));
          }
        } catch (e) {
          return response.body;
        }

        return res;
      }
      throw 'Hubo un error, por favor intente nuevamente';
    } catch (e) {
      throw e.toString();
    }
  }
}
