import 'package:dio/dio.dart';

import '../../strings/failures_messages.dart';

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return INTERNAL_SERVER_ERROR_FAILURE_MESSAGE;
  }
}