import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordVisibilityProvider extends ChangeNotifier {
  bool isPasswordHidden = true;

  void toggleVisibility() {
    isPasswordHidden = !isPasswordHidden;
    notifyListeners();
  }
}
