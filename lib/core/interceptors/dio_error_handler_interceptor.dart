import 'dart:developer';
import 'dart:io';
import 'package:bloc_architecture/features/auth/data/utils/logout_without_context_util.dart';
import 'package:bloc_architecture/features/shared/utils/extract_error_message_util.dart';
import 'package:dio/dio.dart';
import '../exceptions/dio/bad_request_exception.dart';
import '../exceptions/dio/conflict_exception.dart';
import '../exceptions/dio/deadline_exceeded_exception.dart';
import '../exceptions/dio/forbidden_exception.dart';
import '../exceptions/dio/internal_server_exception.dart';
import '../exceptions/dio/no_internet_exception.dart';
import '../exceptions/dio/not_found_exception.dart';
import '../exceptions/dio/unauthorized_exception.dart';

class DioErrorHandlerInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final res = err.response?.data;
    final String errMessage = extractErrorMessage(res);
    log(res?.toString() ?? 'No response data available');
    switch (err.type) {
      case DioExceptionType.connectionTimeout ||
            DioExceptionType.sendTimeout ||
            DioExceptionType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case HttpStatus.badRequest || HttpStatus.notAcceptable:
            throw BadRequestException(err.requestOptions, errMessage);
          case HttpStatus.unauthorized:
            logoutWithoutContext();
            throw UnauthorizedException(err.requestOptions, errMessage);
          case HttpStatus.forbidden:
            throw ForbiddenException(err.requestOptions, errMessage);
          case HttpStatus.notFound:
            throw NotFoundException(err.requestOptions, errMessage);
          case HttpStatus.conflict:
            throw ConflictException(err.requestOptions, errMessage);
          case HttpStatus.internalServerError:
            throw InternalServerErrorException(err.requestOptions);
          default:
            throw DioException(
              requestOptions: err.requestOptions,
              response: err.response,
              type: err.type,
              error: err.error,
            );
        }
      case DioExceptionType.connectionError:
        throw NoInternetConnectionException(err.requestOptions);
      case DioExceptionType.cancel:
        break;
      default:
        throw err.message.toString();
    }
    super.onError(err, handler);
  }
}
