class APIEndPoints {
  static int connectionTimeout = const Duration(seconds: 15).inMilliseconds;
  static int receiveTimeout = const Duration(minutes: 1).inMilliseconds;
  static int sendTimeout = const Duration(seconds: 5).inMilliseconds;

  static const String baseUrl = '';

  //---------------auth
  static const String dev = '/dev';
  static const String login = '$dev/api/auth/login-user';
  static const String register = '$dev/api/auth/register-user';
  static const String logout = '$dev/api/auth/logout';
  static const String forgetPassword = '$dev/api/auth/forget-password';
  static const String changePassword = '$dev/api/auth/change-password';

  //--------------other
  static const String ads = '$dev/api/admin-posts';
  static const String posts = '$dev/api/posts';
  static const String myProfile = '$dev/api/users/my-profile';
  static const String profile = '$dev/api/users/profile';
  static const String users = '$dev/api/users';
  static const String cities = '$dev/api/cities';
  static const String proposals = '$dev/api/proposals';
  static const String comments = '$dev/api/comments';
  static const String search = '$dev/api/posts/search-by-description';
  static const String myPosts = '$dev/api/posts/my-posts';
  static const String notifications = '$dev/api/notifications';
  static const String device = '$users/device';
  static const String token = '$users/token';
}
