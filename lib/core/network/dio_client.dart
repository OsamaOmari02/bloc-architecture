import 'package:bloc_architecture/core/interceptors/dio_error_handler_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../constants/api_constants.dart';
import '../interceptors/retry_interceptor.dart';
import '../interceptors/headers_interceptor.dart';
import '../services/internet_connection_service.dart';

class DioClient {
  static final Dio _dio = Dio();
  static final cacheOptions = CacheOptions(
    store: MemCacheStore(),
    maxStale: const Duration(minutes: 20),
  );

  static void init() {
    _dio
      ..options.baseUrl = APIConstants.baseUrl
      ..options.connectTimeout = APIConstants.connectionTimeout
      ..options.receiveTimeout = APIConstants.receiveTimeout
      ..options.sendTimeout = APIConstants.sendTimeout
      ..options.responseType = ResponseType.json
      ..options.headers = {'Content-Type': 'application/json'}
      ..interceptors.addAll([
        HeadersInterceptor(),
        RetryInterceptor(_dio),
        DioErrorHandlerInterceptor(),
        PrettyDioLogger(
          request: true,
          requestBody: true,
          responseBody: true,
          error: true,
        ),
        DioCacheInterceptor(options: cacheOptions),
      ]);
  }

  // Get:-----------------------------------------------------------------------
  static Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    await InternetConnectionService.checkConnectivity();
    final Response response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
  }

  // Delete:--------------------------------------------------------------------
  static Future<Response> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    await InternetConnectionService.checkConnectivity();
    final Response response = await _dio.delete(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
    return response;
  }

  // Post:----------------------------------------------------------------------
  static Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    await InternetConnectionService.checkConnectivity();
    final Response response = await _dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
  }

  // Put:-----------------------------------------------------------------------
  static Future<Response> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    await InternetConnectionService.checkConnectivity();
    final Response response = await _dio.put(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
  }

  // Patch:---------------------------------------------------------------------
  static Future<Response> patch(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    await InternetConnectionService.checkConnectivity();
    final Response response = await _dio.patch(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
  }
}
