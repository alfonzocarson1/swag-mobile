import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import '../common/utils/http_interceptors.dart';
import '../data/secure_storage/storage_repository_service.dart';
import '../di/injector.dart';
import 'api.dart';

enum RequestMethod { get, post, put, multipart, delete }

class APIService {
  APIService();

  Future updateImageEndpoint<T>(
      {required Endpoint endpoint,
      required RequestMethod method,
      T Function(Map<String, dynamic> json)? fromJson,
      String? jsonKey,
      bool? needJsonBody = true,
      Map<String, Object>? params,
      List<String>? body,
      Map<String, String>? headers,
      Uint8List? bytes,
      bool needBearer = false,
      String? dynamicParam}) async {
    InterceptedClient client = InterceptedClient.build(
      retryPolicy: TokenRetryPolicy(),
      interceptors: [ApiInterceptor()],
    );
    String? token = '';
    if (needBearer) {
      token = await getIt<StorageRepositoryService>().getToken();
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
        case RequestMethod.delete:
          response = await client.delete(
            Uri.parse(uri.toString()),
            headers: baseHeaders,
            body: jsonEncode(body),
          );
          break;
        case RequestMethod.multipart:
          var request =
              http.MultipartRequest('POST', Uri.parse(uri.toString()));
          final file = http.MultipartFile.fromBytes('file', bytes!,
              filename: 'myAvatar.png');
          request.headers.addAll(baseHeaders);
          request.files.add(file);
          final streamResponse = await request.send();
          response = await http.Response.fromStream(streamResponse);
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

  Future getEndpointData<T>(
      {required Endpoint endpoint,
      required RequestMethod method,
      T Function(Map<String, dynamic> json)? fromJson,
      String? jsonKey,
      bool? needJsonBody = true,
      Map<String, Object>? params,
      Map<String, dynamic>? body,
      Map<String, String>? headers,
      Uint8List? bytes,
      bool needBearer = false,
      String? dynamicParam}) async {
    InterceptedClient client = InterceptedClient.build(
      retryPolicy: TokenRetryPolicy(),
      interceptors: [ApiInterceptor(), LoggingInterceptor(enabled: false)],
    );
    String? token = '';
    if (needBearer) {
      token = await getIt<StorageRepositoryService>().getToken();
      print(token);
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
        case RequestMethod.delete:
          response = await client.delete(
            Uri.parse(uri.toString()),
            headers: baseHeaders,
            body: jsonEncode(body),
          );
          break;
        case RequestMethod.multipart:
          var request =
              http.MultipartRequest('POST', Uri.parse(uri.toString()));
          final file = http.MultipartFile.fromBytes('file', bytes!,
              filename: 'myAvatar.png');
          request.headers.addAll(baseHeaders);
          request.files.add(file);
          final streamResponse = await request.send();
          response = await http.Response.fromStream(streamResponse);
          break;
      }
      if (response.statusCode == 200 || response.statusCode == 201) {
        dynamic res;
        try {
          if (jsonKey != null) {
            final rawList = jsonDecode(utf8.decode(response.bodyBytes));
            res = fromJson!({jsonKey: rawList});
          } else {
            res = fromJson!(json.decode(utf8.decode(response.bodyBytes)));
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
