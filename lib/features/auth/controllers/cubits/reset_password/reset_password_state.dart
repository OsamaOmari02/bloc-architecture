part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

final class ResetPasswordLoading extends ResetPasswordState {}

final class ResetPasswordSuccess extends ResetPasswordState {
  final List<Role> roles;
  final String successMessage;

  ResetPasswordSuccess({
    required this.roles,
    required this.successMessage,
  });
}

final class ResetPasswordFailure extends ResetPasswordState {
  final String errMessage;

  ResetPasswordFailure({required this.errMessage});
}