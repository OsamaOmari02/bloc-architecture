import 'package:dio/dio.dart';

import '../../strings/failures_messages.dart';

class UnknownException extends DioException {
  UnknownException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return UNEXPECTED_FAILURE_MESSAGE;
  }
}
