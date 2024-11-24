part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final List<Role> roles;
  LoginSuccess({required this.roles});
}

final class LoginFailure extends LoginState {
  final String errMessage;
  LoginFailure({required this.errMessage});
}
