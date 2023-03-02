// ignore_for_file: use_build_context_synchronously

import 'package:bloc_architecture/views/shared/utlis/toast_message.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/strings/failures.dart';

class LaunchUrlService {
  static void goToWeb(BuildContext context, url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
        throw UNEXPECTED_FAILURE_MESSAGE;
      }
    } catch (error) {
      ToastMessage.showErrorToastMessage(
          context: context, msg: error.toString());
    }
  }

  static void makeAPhoneCall(BuildContext context, phoneNumber) async {
    try {
      final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
      if (!await launchUrl(phoneUri)) {
        throw UNEXPECTED_FAILURE_MESSAGE;
      }
    } catch (error) {
      ToastMessage.showErrorToastMessage(
          context: context, msg: error.toString());
    }
  }
}
