class LoginUser {
  final String email;
  final String password;

  LoginUser({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email.trim();
    data['password'] = password.trim();
    return data;
  }
}
