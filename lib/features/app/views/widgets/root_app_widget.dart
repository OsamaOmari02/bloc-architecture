import 'dart:io';

import 'package:flutter/material.dart';

class RootAppWidget extends StatelessWidget {
  const RootAppWidget({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Container(
            color: Colors.white,
            child: SafeArea(child: child!),
          )
        : SafeArea(child: child!);
  }
}
