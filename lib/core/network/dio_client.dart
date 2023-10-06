import 'package:bloc_architecture/core/network/network_info.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../constants/api_constants.dart';
import '../interceptors/token_interceptor.dart';
import '../services/dio_cache_service.dart';

class DioClient {
  static final Dio _dio = Dio();

  static void init() {
    _dio
      ..options.baseUrl = APIEndPoints.baseUrl
      ..options.connectTimeout = APIEndPoints.connectionTimeout
      ..options.receiveTimeout = APIEndPoints.receiveTimeout
      ..options.sendTimeout = APIEndPoints.sendTimeout
      ..options.responseType = ResponseType.json
      ..options.headers = {
        'Content-Type': 'application/json',
        'Accept-Language': 'ar'
      }
      ..interceptors.add(TokenInterceptor())
      ..interceptors.add(DioCacheService.cacheManager.interceptor);
  }

  // Get:-----------------------------------------------------------------------
  static Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      await InternetConnectionService.checkConnectivity();
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return _returnResponse(response as http.Response);
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  static Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      await InternetConnectionService.checkConnectivity();
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return _returnResponse(response as http.Response);
    } catch (e) {
      rethrow;
    }
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
    try {
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
      return _returnResponse(response as http.Response);
    } catch (e) {
      rethrow;
    }
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
    try {
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
      return _returnResponse(response as http.Response);
    } catch (e) {
      rethrow;
    }
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
    try {
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
      return _returnResponse(response as http.Response);
    } catch (e) {
      rethrow;
    }
  }

  static dynamic _returnResponse(http.Response response) {
    return json.decode(response.body.toString());
  }
}
