import 'package:flutter/material.dart';
import 'package:shifacom/core/error/exceptions.dart';
import 'package:shifacom/core/strings/failures.dart';
import 'package:shifacom/core/utlis/toast_message.dart';

void showErrorToast(BuildContext context, errorMessage) {
  ToastMessage.showErrorToastMessage(msg: errorMessage, context: context);
}

void errorHandler(BuildContext context, error) {
  switch (error) {
    case ServerException:
      return showErrorToast(context, SERVER_FAILURE_MESSAGE);
    case EmptyCacheException:
      return showErrorToast(context, EMPTY_CACHE_FAILURE_MESSAGE);
    case OfflineException:
      return showErrorToast(context, OFFLINE_FAILURE_MESSAGE);
    default:
      return showErrorToast(context, UNEXPECTED_FAILURE_MESSAGE);
  }
}
