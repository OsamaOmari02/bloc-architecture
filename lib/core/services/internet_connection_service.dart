import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:bloc_architecture/core/services/shared_pref_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../strings/failures_messages.dart';

class InternetConnectionService {
  InternetConnectionService._();
  static final Connectivity connectivity = Connectivity();

  static Future<void> checkConnectivity() async {
    final List<ConnectivityResult> connectivityResult =
        await (connectivity.checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      final String language =
          SharedPrefService.getString(CacheConstants.language) ?? 'ar';
      if (language == 'ar') {
        throw OFFLINE_FAILURE_MESSAGE;
      }
      throw "Check your internet connection";
    }
  }
}
