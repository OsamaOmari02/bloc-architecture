import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/routing_constants.dart';

import '../../../../core/services/routing_service.dart';
import '../../../../core/services/secure_storage_service.dart';
import '../../../../core/services/shared_pref_service.dart';

void logoutWithoutContext() async {
  RoutingService.navigatorKey.currentContext
      ?.goNamed(RoutingConstants.loginPage);
  SecureStorageService.delete(CacheConstants.accessToken);
  SecureStorageService.delete(CacheConstants.myId);
  SharedPrefService.removeInstance(CacheConstants.deviceToken);
  SharedPrefService.removeInstance(CacheConstants.socialPlatform);
  SharedPrefService.removeInstance(CacheConstants.isGuest);
  // SocketIOClient.close();
}
