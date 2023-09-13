import 'package:dio_http_cache_lts/dio_http_cache_lts.dart';
import '../constants/api_constants.dart';

class DioCacheService {
  static Duration cacheMaxAge = const Duration(minutes: 4);

  static final DioCacheManager cacheManager = DioCacheManager(CacheConfig(
    baseUrl: APIEndPoints.baseUrl,
    defaultMaxAge: cacheMaxAge,
  ));
}
