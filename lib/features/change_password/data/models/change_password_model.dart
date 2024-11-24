class ChangePassword {
  final String currentPassword;
  final String newPassword;
  final String confirmPassword;

  ChangePassword({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  Map<String, String> toJson() {
    return {
      'currentPassword': currentPassword,
      'newPassword': newPassword,
      'confirmNewPassword': confirmPassword,
    };
  }
}
