import 'dart:developer';
import 'dart:io';
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
