class ResetPassword {
  final String password;
  final String confirmPassword;

  final String otpToken;
  ResetPassword({
    required this.password,
    required this.confirmPassword,
    required this.otpToken,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['password'] = password;
    data['confirmPassword'] = confirmPassword;
    data['token'] = otpToken;
    return data;
  }
}
