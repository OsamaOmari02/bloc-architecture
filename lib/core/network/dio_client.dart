import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../constants.dart';
import '../interceptors/token_interceptor.dart';

class DioClient {
  final Dio _dio = Dio();

  DioClient() {
    _dio
      ..options.baseUrl = APIEndPoints.baseUrl
      ..options.connectTimeout = APIEndPoints.connectionTimeout
      ..options.receiveTimeout = APIEndPoints.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.add(TokenInterceptor());
  }

  Dio get dio => _dio;

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
      String url, {
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
      String url, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
      String url, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
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
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
      String url, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
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
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> patch(String path,
      [Object? requestBody,
        Map<String, dynamic> queryParams = const {}]) async {
    dynamic responseJson;
    try {
      final response =
      await _dio.patch(APIEndPoints.baseUrl + path, data: requestBody);
      responseJson = _returnResponse(response as http.Response);
    } on DioError catch (e) {
      rethrow;
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    return json.decode(response.body.toString());
  }
}
