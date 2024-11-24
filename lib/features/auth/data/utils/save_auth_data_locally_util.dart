import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:dio/dio.dart';

import '../../../../core/services/secure_storage_service.dart';
import '../../../../core/services/shared_pref_service.dart';

Future<void> saveAuthDataLocally(
  Response<dynamic> res,
  Map<String, dynamic> decodedToken, [
  int? socialPlatform,
]) async {
  await Future.wait([
    SecureStorageService.set(CacheConstants.accessToken, res.data['data']),
    SecureStorageService.set(CacheConstants.myId, decodedToken['sub']),
    if (socialPlatform != null)
      SharedPrefService.setInt(CacheConstants.socialPlatform, socialPlatform),
  ]);
}
