import 'package:dio/dio.dart';

import '../../strings/failures_messages.dart';

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return OFFLINE_FAILURE_MESSAGE;
  }
}