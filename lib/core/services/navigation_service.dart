import 'package:flutter/services.dart';

class NavigationService {
  NavigationService._();
  static void navigateExitApp() => SystemNavigator.pop(animated: true);
}
