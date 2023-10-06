import 'dart:io';

import 'package:flutter/material.dart';
import '../../../shared/components/video_player/fullscreen_mode.dart';

class RootAppWidget extends StatelessWidget {
  const RootAppWidget({Key? key, required this.isDark, required this.child})
      : super(key: key);

  final bool isDark;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Container(
            color: isDark || FullScreenMode.isFullScreen ? Colors.black : Colors.white,
            child: SafeArea(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: child!,
              ),
            ),
          )
        : SafeArea(
            child: Directionality(
                textDirection: TextDirection.rtl, child: child!));
  }
}
