class APIEndPoints {
  static int connectionTimeout = const Duration(hours: 1).inMilliseconds;
  static int receiveTimeout = const Duration(hours: 1).inMilliseconds;
  static int sendTimeout = const Duration(minutes: 5).inMilliseconds;

  static const String baseUrl = 'https://be.git3com.com';

  //---------------auth
  static const String login = '/api/auth/login-user';
  static const String register = '/api/auth/register-user';
  static const String logout = '/api/auth/logout';
  static const String forgetPassword = '/api/auth/forget-password';
  static const String changePassword = '/api/auth/change-password';

  //--------------other
  static const String ads = '/api/admin-posts';
  static const String posts = '/api/posts';
  static const String myProfile = '/api/users/my-profile';
  static const String profile = '/api/users/profile';
  static const String users = '/api/users';
  static const String cities = '/api/cities';
  static const String proposals = '/api/proposals';
  static const String comments = '/api/comments';
  static const String search = '/api/posts/search-by-description';
  static const String myPosts = '/api/posts/my-posts';
  static const String notifications = '/api/notifications';

}
