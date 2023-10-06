import "dart:developer";

import "package:dio/dio.dart";

import "../constants/other_constants.dart";
import "../exceptions/dio_exceptions/bad_request_exception.dart";
import "../exceptions/dio_exceptions/conflict_exception.dart";
import "../exceptions/dio_exceptions/deadline_exceeded_exception.dart";
import "../exceptions/dio_exceptions/internal_server_exception.dart";
import "../exceptions/dio_exceptions/no_internet_exception.dart";
import "../exceptions/dio_exceptions/not_found_exception.dart";
import "../exceptions/dio_exceptions/unauthorized_exception.dart";
import "../services/shared_pref_service.dart";


class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String token = SharedPrefService.getString(ACCESS_TOKEN) ?? "";
    options.headers['Authorization'] = 'Bearer $token';
    // log("data = ${options.data.toString()}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // log("res = ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final res = err.response?.data;
    // log('errors are = ${res['errors']?[0] ?? res['error']}');
    // log("res = $res");
    // log("err = ${err.toString()}");
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions,res['errors']?[0] ?? res['error']);
          case 401:
            throw UnauthorizedException(err.requestOptions,res['errors']?[0] ?? res['error']);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 406:
            throw BadRequestException(err.requestOptions,res['errors']?[0] ?? res['error']);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
      case DioErrorType.cancel:
        break;
      default:
        throw err.message.toString();
    }
    return handler.next(err);
  }
}
