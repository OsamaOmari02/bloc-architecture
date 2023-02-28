// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/strings/failures.dart';
import 'error_handler.dart';


class LaunchUrlService {
  static void goToWeb(BuildContext context, url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
        showErrorToast(context, ERROR_OCCURRED);
      }
    } catch (e) {
      showErrorToast(context, ERROR_OCCURRED);
    }
  }

  static void makeAPhoneCall(BuildContext context, phoneNumber) async {
    try {
      final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
      if (!await launchUrl(phoneUri)) {
        errorHandler(context, ERROR_OCCURRED);
      }
    } catch (e) {
      showErrorToast(context, ERROR_OCCURRED);
    }
  }
}
