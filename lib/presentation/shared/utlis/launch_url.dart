// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shifacom/core/utlis/error_handler.dart';
import 'package:url_launcher/url_launcher.dart';

import '../strings/messages.dart';

class LaunchUrlServices {
  static void goToWeb(BuildContext context, url) async {
    try {
      final Uri address = Uri.parse(url);
      if (!await launchUrl(address)) {
        showErrorToast(context, ERROR_OCCURRED);
      }
    } catch (e) {
      showErrorToast(context, ERROR_OCCURRED);
    }
  }

  static void makeAPhoneCall(BuildContext context, phoneNumber) async {
    try {
      final Uri phoneUrl = Uri(scheme: 'tel', path: phoneNumber);
      if (!await launchUrl(phoneUrl)) {
        errorHandler(context, ERROR_OCCURRED);
      }
    } catch (e) {
      showErrorToast(context, ERROR_OCCURRED);
    }
  }
}
