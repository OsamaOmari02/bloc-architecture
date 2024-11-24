import 'package:dio/dio.dart';

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r, this.errMessage)
      : super(requestOptions: r);

  final String errMessage;
  @override
  String toString() {
    return errMessage;
  }
}
