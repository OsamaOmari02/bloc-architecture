part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;
  final BuildContext context;

  const LoginEvent(
      {required this.context, required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
