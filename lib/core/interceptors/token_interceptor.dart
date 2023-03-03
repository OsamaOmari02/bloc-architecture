import "package:bloc_architecture/core/dio_errors/no_internet_exception.dart";
import "package:bloc_architecture/core/network/hive_service.dart";
import "package:dio/dio.dart";

import "../dio_errors/bad_request_exception.dart";
import "../dio_errors/conflict_exception.dart";
import "../dio_errors/deadline_exceeded_exception.dart";
import "../dio_errors/internal_server_exception.dart";
import "../dio_errors/not_found_exception.dart";
import "../dio_errors/unauthorized_exception.dart";
import "../dio_errors/unknown_exception.dart";

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = HiveService.getData('token');
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.connectionError:
        throw NoInternetConnectionException(err.requestOptions);
      case DioErrorType.unknown:
        throw UnknownException(err.requestOptions);
      case DioErrorType.cancel:
        break;
      default:
        throw err.error.toString();
    }
    return handler.next(err);
  }
}
