
import "dart:developer";

import "package:bloc_architecture/core/dio_errors/no_internet_exception.dart";
import "package:bloc_architecture/core/services/shared_pref_service.dart";
import "package:dio/dio.dart";

import "../../data/constants/other_constants.dart";
import "../dio_errors/bad_request_exception.dart";
import "../dio_errors/conflict_exception.dart";
import "../dio_errors/deadline_exceeded_exception.dart";
import "../dio_errors/internal_server_exception.dart";
import "../dio_errors/not_found_exception.dart";
import "../dio_errors/unauthorized_exception.dart";

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String token = SharedPrefService.getString(TOKEN) ?? "";
    options.headers['Authorization'] = 'Bearer $token';
    log("data = ${options.data}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("res = ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final res = err.response?.data;
    // log('errors are = ${res['errors']?[0] ?? res['error']}');
    log("res = $res");
    log("err = ${err.toString()}");
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
