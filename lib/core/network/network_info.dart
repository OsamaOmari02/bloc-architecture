

import 'package:bloc_architecture/core/strings/failures.dart';
import 'package:connectivity_plus/connectivity_plus.dart';



class InternetConnectionService {
  static Future<void> checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      throw OFFLINE_FAILURE_MESSAGE;
    }
  }
}
