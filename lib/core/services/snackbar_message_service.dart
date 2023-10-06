import 'package:bloc_architecture/views/shared/components/text_widget.dart';
import 'package:bloc_architecture/views/shared/utils/media_query_util.dart';
import 'package:flutter/material.dart';

class SnackBarMessageService {
  static void showSuccessSnackBar(BuildContext context,
      {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(minutes: 3),
        behavior: SnackBarBehavior.fixed,
        content: TextWidget(
          text: message,
          size: getWidth(context) * 0.02,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  static void showErrorSnackBar(BuildContext context,
      {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.fixed,
        content: TextWidget(
          text: message,
          size: getWidth(context) * 0.02,
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  static void showWarningSnackBar(BuildContext context,
      {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.fixed,
        content: TextWidget(
          text: message,
          size: getWidth(context) * 0.02,
        ),
        backgroundColor: Colors.yellow,
      ),
    );
  }

  static void hideCurrentSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}
