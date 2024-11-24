import 'package:bloc_architecture/core/strings/failures_messages.dart';
import 'package:bloc_architecture/features/shared/utils/generate_google_maps_location_url_util.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  UrlLauncherService._();
  static Future<void> launch(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw UNEXPECTED_FAILURE_MESSAGE;
    }
  }

  static Future<void> makeAPhoneCall(String phoneNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    if (!await launchUrl(uri)) {
      throw UNEXPECTED_FAILURE_MESSAGE;
    }
  }

  static Future<void> openLocationInGoogleMaps(double lat, double long) async {
    final String path = generateGoogleMapsLocationUrl(lat, long);
    await launch(path);
  }
}
