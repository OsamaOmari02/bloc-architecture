import 'package:dio/dio.dart';

class ConflictException extends DioException {
  ConflictException(RequestOptions r, this.errMessage)
      : super(requestOptions: r);

  final String errMessage;
  @override
  String toString() {
    return errMessage;
  }
}
