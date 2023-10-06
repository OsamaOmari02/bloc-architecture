import 'package:dio/dio.dart';

import '../../strings/failures_messages.dart';

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return NOT_FOUND_FAILURE_MESSAGE;
  }
}