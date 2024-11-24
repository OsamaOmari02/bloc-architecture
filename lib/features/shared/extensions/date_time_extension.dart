import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:flutter/material.dart';

extension DateTimeExtension on DateTime {
  String since(BuildContext context) {
    final Duration durationSinceCreated = DateTime.now().difference(this);
    if (durationSinceCreated.inDays > 0) {
      return '${durationSinceCreated.inDays.toString()}d';
    } else if (durationSinceCreated.inHours > 0) {
      return '${durationSinceCreated.inHours.toString()}h';
    } else if (durationSinceCreated.inMinutes > 0) {
      return '${durationSinceCreated.inMinutes.toString()}m';
    } else {
      return context.appLocalization.sinceOneMinute;
    }
  }
}
