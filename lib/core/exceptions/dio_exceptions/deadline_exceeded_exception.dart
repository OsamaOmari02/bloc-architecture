import 'package:dio/dio.dart';

import '../../strings/failures_messages.dart';

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return DEADLINE_EXCEEDED_FAILURE_MESSAGE;
  }
}