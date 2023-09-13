import 'package:bloc_architecture/core/strings/failures_messages.dart';
import 'package:dio/dio.dart';

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return OFFLINE_FAILURE_MESSAGE;
  }
}