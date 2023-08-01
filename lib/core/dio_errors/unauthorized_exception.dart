import 'package:dio/dio.dart';

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r,this.errMessage) : super(requestOptions: r);

  final String? errMessage;
  @override
  String toString() {
    return errMessage ?? 'Access denied';
  }
}