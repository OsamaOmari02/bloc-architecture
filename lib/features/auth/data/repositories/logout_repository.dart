import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:bloc_architecture/features/shared/classes/base_repository_class.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/services/secure_storage_service.dart';
import '../../../../core/services/shared_pref_service.dart';

class LogoutRepository extends BaseRepository {
  LogoutRepository({required super.cancelToken});

  Future<void> logout() async {
    await DioClient.post(
      APIConstants.logout,
      cancelToken: cancelToken,
    );
    SecureStorageService.delete(CacheConstants.accessToken);
    SecureStorageService.delete(CacheConstants.myId);
    SharedPrefService.removeInstance(CacheConstants.deviceToken);
    SharedPrefService.removeInstance(CacheConstants.isGuest);
    // SocketIOClient.close();
  }
}
