import 'package:location/location.dart';

class LocationService {
  LocationService._();
  static final Location location = Location();

  static Future<bool> requestLocationServiceIfNotEnabled() async {
    bool isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      return isServiceEnabled;
    }
    return isServiceEnabled;
  }

  static Future<PermissionStatus>
      requestLocationPermissionIfNotGranted() async {
    PermissionStatus permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied ||
        permissionStatus == PermissionStatus.deniedForever) {
      permissionStatus = await location.requestPermission();
      return permissionStatus;
    }
    return permissionStatus;
  }

  static Future<LocationData?> getMyCurrentLocation() async {
    bool isServiceEnabled = await requestLocationServiceIfNotEnabled();
    if (!isServiceEnabled) {
      return null;
    }
    PermissionStatus permissionStatus =
        await requestLocationPermissionIfNotGranted();
    if (permissionStatus != PermissionStatus.granted &&
        permissionStatus != PermissionStatus.grantedLimited) {
      return null;
    }
    return await location.getLocation();
  }
}
