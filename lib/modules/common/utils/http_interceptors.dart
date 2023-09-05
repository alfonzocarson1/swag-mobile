import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http_interceptor/http_interceptor.dart';

import '../../data/secure_storage/storage_repository_service.dart';
import '../../di/injector.dart';

class TokenRetryPolicy extends RetryPolicy {
  @override
  int get maxRetryAttempts => 2;

  @override
  Future<bool> shouldAttemptRetryOnException(
    Exception reason,
    BaseRequest request,
  ) async {
    log(reason.toString());

    return false;
  }

  @override
  Future<bool> shouldAttemptRetryOnResponse(BaseResponse response) async {
    if (response.statusCode == 401) {
      try {
        await refreshToken();
        return true;
      } on SocketException catch (_) {
        return false;
      }
    }
    return false;
  }

  Future<void> refreshToken() async {
    try {} catch (e) {
      throw "Error refreshing token$e";
    }
  }
}

class ApiInterceptor extends InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    String? token = await getIt<StorageRepositoryService>().getToken();

    final Map<String, String> headers = Map.from(request.headers);
    headers[HttpHeaders.authorizationHeader] = 'Bearer $token';

    return request.copyWith(
      url: request.url,
      headers: headers,
    );
  }

  @override
  Future<bool> shouldInterceptResponse() async {
    return false;
  }

  @override
  Future<BaseResponse> interceptResponse(
          {required BaseResponse response}) async =>
      response;
}

class LoggingInterceptor implements InterceptorContract {
  final bool enabled;
  final List<String> blacklist;

  LoggingInterceptor({required this.enabled, this.blacklist = const []});

  @override
  Future<BaseRequest> interceptRequest({
    required BaseRequest request,
  }) async {
    if (blacklist.any((x) => request.url.toString().contains(x))) {
      return request;
    }
    debugPrint(">>> ${request.method} ${request.url}");
    debugPrint(">>> Headers:");
    for (final headerEntry in request.headers.entries) {
      debugPrint(">>> ${headerEntry.key}: ${headerEntry.value}");
    }
    if (request is Request) {
      debugPrint(">>> Body:");
      request.body.split("\n").forEach((line) {
        debugPrint(">>> $line");
      });
    }
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    if (blacklist.any((x) => (response.request?.url.toString() ?? "").contains(x))) {
      return response;
    }
    debugPrint(
        "<<< [${response.statusCode}] ${response.request?.method} ${response.request?.url}");
    // debugPrint("<<< Headers:");
    // for (final headerEntry in response.headers.entries) {
    //   debugPrint(">>> ${headerEntry.key}: ${headerEntry.value}");
    // }
    if (response is Response) {
      debugPrint("<<< Body:");
      var body = response.body;

      try {
        final result = json.decode(response.body);
        body = const JsonEncoder.withIndent("  ").convert(result);
      } catch (e) {
        // body isn't valid json
      }

      body.split("\n").forEach((line) {
        debugPrint("<<< $line");
      });
    }
    return response;
  }

  @override
  Future<bool> shouldInterceptRequest() async => enabled;

  @override
  Future<bool> shouldInterceptResponse() async => enabled;
}
