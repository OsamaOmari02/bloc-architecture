import "package:dio/dio.dart";

import "../constants/cache_constants.dart";
import "../services/secure_storage_service.dart";
import "../services/shared_pref_service.dart";

class HeadersInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String? accessToken =
        await SecureStorageService.get(CacheConstants.accessToken);
    final String language =
        SharedPrefService.getString(CacheConstants.language) ?? 'ar';
    options.headers['Accept-Language'] = language;
    options.headers['Authorization'] = 'Bearer $accessToken';
    super.onRequest(options, handler);
  }
}
