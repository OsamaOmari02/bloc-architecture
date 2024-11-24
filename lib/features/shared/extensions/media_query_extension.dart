import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  double get aboveKeyBoard => MediaQuery.viewInsetsOf(this).bottom;

  bool get isKeyboardOpen => MediaQuery.viewInsetsOf(this).bottom != 0;
}
