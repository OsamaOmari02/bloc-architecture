import "package:dio/dio.dart";

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final token = LocalStorageService.getToken();
    // final lang = LocalStorageService.getLang();

    // options.headers['Authorization'] = 'Bearer $token';
    // options.headers['Accept-Language'] = lang;

    super.onRequest(options, handler);
  }
}