import 'package:flutter/cupertino.dart';

class RadioButtonProvider<T> extends ChangeNotifier {
  T? selectedValue;

  void onChanged(T value) {
    selectedValue = value;
    notifyListeners();
  }
}
