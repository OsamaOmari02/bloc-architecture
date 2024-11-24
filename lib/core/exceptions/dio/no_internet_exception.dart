import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:dio/dio.dart';
import '../../services/shared_pref_service.dart';
import '../../strings/failures_messages.dart';

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    final String language =
        SharedPrefService.getString(CacheConstants.language) ?? 'ar';
    if (language == 'ar') {
      return OFFLINE_FAILURE_MESSAGE;
    }
    return "Check your internet connection";
  }
}
