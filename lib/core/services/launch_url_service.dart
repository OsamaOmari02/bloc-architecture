
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../strings/failures_messages.dart';


class LaunchUrlService {
  static void goToWeb(BuildContext context, url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
        throw UNEXPECTED_FAILURE_MESSAGE;
      }
    } catch (error) {
      rethrow;
    }
  }

  static void makeAPhoneCall(BuildContext context, phoneNumber) async {
    try {
      final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
      if (!await launchUrl(phoneUri)) {
        throw UNEXPECTED_FAILURE_MESSAGE;
      }
    } catch (error) {
      rethrow;
    }
  }
}
