import 'package:bloc_architecture/core/strings/failures_messages.dart';
import 'package:dio/dio.dart';

class UserDataIncompleteException extends DioError {
  UserDataIncompleteException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return USER_DATA_INCOMPLETE_FAILURE_MESSAGE;
  }
}