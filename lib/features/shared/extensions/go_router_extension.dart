import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension GoRouterExtension on BuildContext {
  void safePop([result]) {
    if (canPop()) {
      pop(result);
    }
  }
}
