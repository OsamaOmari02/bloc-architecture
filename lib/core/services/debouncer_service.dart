import 'dart:async';

import 'package:flutter/foundation.dart';

class DebounceService {
  final int milliseconds;
  Timer? _timer;

  DebounceService({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() => _timer?.cancel();
}
