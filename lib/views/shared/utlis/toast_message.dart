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

  // _onApiError = (error: HttpError) => {
  // let translationSubscriber$ = this.translate
  //     .get('common.error')
  //     .subscribe((translated: string) => {
  // this.showError(
  // (error?.error?.errors?.length ?? 0 > 0
  // ? error?.error?.errors?.join(',')  ''
  //     : error?.error?.error)  error?.statusText
  // );
  // });
  // translationSubscriber$.unsubscribe();
  // };
  //
  // _onApiSuccess = (data: any) => {
  // let translationSubscriber$ = this.translate
  //     .get('common.error')
  //     .subscribe((translated: string) => {
  // this.showSuccess(data);
  // });
  // translationSubscriber$.unsubscribe();
  // };

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
