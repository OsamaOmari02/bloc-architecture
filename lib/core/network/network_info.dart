

import 'package:connectivity_plus/connectivity_plus.dart';

import '../error/exceptions.dart';

class InternetConnectionService {
  static Future<void> checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      throw OfflineException();
    }
  }
}
