import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastMessage {
  static void showSuccessToastMessage(
      {required BuildContext context, required String msg}) {
    ToastContext().init(context);
    Toast.show(
      msg,
      duration: Toast.lengthShort,
      gravity: Toast.bottom,
      backgroundColor: Colors.green,
    );
  }

  static void showErrorToastMessage(
      {required BuildContext context, required String msg}) {
    ToastContext().init(context);
    Toast.show(
      msg,
      duration: Toast.lengthShort,
      gravity: Toast.bottom,
      backgroundColor: Colors.red,
    );
  }

  static void showWarningToastMessage(
      {required BuildContext context, required String msg}) {
    ToastContext().init(context);
    Toast.show(
      msg,
      duration: Toast.lengthShort,
      gravity: Toast.bottom,
      backgroundColor: Colors.orangeAccent,
    );
  }
}
