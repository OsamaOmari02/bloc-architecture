import 'package:bloc_architecture/core/strings/failures_messages.dart';
import 'package:dio/dio.dart';

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return INTERNAL_SERVER_ERROR_FAILURE_MESSAGE;
  }
}