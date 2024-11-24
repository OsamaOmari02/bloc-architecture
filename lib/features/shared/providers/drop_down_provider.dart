import 'package:flutter/cupertino.dart';

class DropDownProvider<T> extends ChangeNotifier {
  T? selectedValue;

  void onChanged(T value) {
    selectedValue = value;
    notifyListeners();
  }

  void reset() {
    selectedValue = null;
  }
}
