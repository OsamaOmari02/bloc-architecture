import 'package:dio/dio.dart';

class ForbiddenException extends DioException {
  ForbiddenException(RequestOptions r, this.errMessage)
      : super(requestOptions: r);

  final String errMessage;
  @override
  String toString() {
    return errMessage;
  }
}
