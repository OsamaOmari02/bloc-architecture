import 'package:dio/dio.dart';

abstract class BaseRepository {
  BaseRepository({required CancelToken cancelToken})
      : _cancelToken = cancelToken;

  final CancelToken _cancelToken;

  CancelToken get cancelToken => _cancelToken;
}
