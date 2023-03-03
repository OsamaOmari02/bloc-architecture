import 'package:dio/dio.dart';

class UnknownException extends DioError {
  UnknownException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown Error occurred !';
  }
}