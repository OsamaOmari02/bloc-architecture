import 'package:bloc_architecture/app_configs.dart';

class APIConstants {
  APIConstants._();
  static const Duration connectionTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(minutes: 1);
  static const Duration sendTimeout = Duration(minutes: 2);
  static const int limit = 10;

  static final String baseUrl = '${AppConfigs.baseUrl}/api/';
  // static final String baseUrl = Platform.isAndroid
  //     ? 'http://192.168.1.6:3000/dev/api/'
  //     : 'http://localhost:3000/dev/api/';

  //---------------auth
  static const String login = 'auth/login';
  static const String register = 'auth/register';
  static const String socialRegisterOrLogin =
      'auth/social-media-login-or-register';
  static const String socialRegister = 'auth/social-media-register';
  static const String refreshToken = 'auth/refresh-token';
  static const String logout = 'auth/logout';
  static const String changePassword = 'auth/change-password';
  static const String forgetPassword = 'auth/forget-password';
  static const String resetPassword = 'auth/reset-password';
  static const String checkVerificationCode = 'auth/check-password-otp';

  //--------------users
  static const String users = 'users';
  static const String usersGuest = 'users/guest';
  static const String usersSearch = 'users/search';
  static const String blockedUsers = 'users/blocked';
  static const String blockOrUnblock = 'users/block-unblock';
  static const String servicesFilter = 'users/services/filter';
  static const String usersAvailability = 'users/availability';
  static const String accountInformation = 'users/account-information';
  static const String profile = 'users/profile';
  static const String token = 'users/token';
  static const String device = 'users/device';
  static const String deleteAccount = 'users/delete-account';
  static const String followRequests = 'users/follow-requests';
  static const String toggleFollow = 'users/follow-unfollow';
  static const String pendingRequests =
      'users/follow-requests/pending-requests';
  static const String businessAccountApplication =
      'users/applications/business-account';
  static const String contentCreatorApplication =
      'users/applications/content-creator';
  static const String verificationRequest = 'users/verification-request';
  static const String visibility = 'users/visibility';
  //---------messages
  static const String messages = 'messages';

  //---------rooms
  static const String rooms = 'rooms';

  //---------notifications
  static const String notifications = 'notifications';

  //---------cities
  static const String cities = 'cities';

  //--------reports
  static const String report = 'reports';

  //--------ads
  static const String ads = 'admin-posts';
}
