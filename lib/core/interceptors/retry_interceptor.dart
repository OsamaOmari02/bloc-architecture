import 'dart:io';

import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  RetryInterceptor(this.dio);
  final Dio dio;
  static int maxRetries = 2;
  static int retryDelay = 750; // ms
  static String retriesCountKey = 'retriesCount';

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final RequestOptions requestOptions = err.requestOptions;
    int retriesCount = requestOptions.extra[retriesCountKey] ?? 1;
    if (_shouldRetry(err) && retriesCount <= maxRetries) {
      try {
        requestOptions.extra[retriesCountKey] = ++retriesCount;
        await Future.delayed(Duration(milliseconds: retryDelay));
        final Response res = await dio.request(
          requestOptions.path,
          data: requestOptions.data,
          queryParameters: requestOptions.queryParameters,
          options: Options(
            headers: requestOptions.headers,
            sendTimeout: requestOptions.sendTimeout,
            receiveTimeout: requestOptions.receiveTimeout,
            method: requestOptions.method,
            extra: requestOptions.extra,
          ),
          cancelToken: requestOptions.cancelToken,
        );
        return handler.resolve(res);
      } catch (e) {
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  bool _shouldRetry(DioException err) {
    final int? statusCode = err.response?.statusCode;
    final DioExceptionType type = err.type;
    return statusCode == HttpStatus.internalServerError ||
        type == DioExceptionType.connectionTimeout ||
        type == DioExceptionType.sendTimeout ||
        type == DioExceptionType.sendTimeout;
  }
}
