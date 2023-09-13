import 'package:dio/dio.dart';

import '../strings/failures_messages.dart';

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r,this.errMessage) : super(requestOptions: r);

  final String? errMessage;
  @override
  String toString() {
    return errMessage ?? ACCESS_DENIED_FAILURE_MESSAGE;
  }
}