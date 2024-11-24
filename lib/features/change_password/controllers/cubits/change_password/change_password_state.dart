part of 'change_password_cubit.dart';

sealed class ChangePasswordState {
  ChangePasswordState();
}

final class ChangePasswordInitial extends ChangePasswordState {}

final class ChangePasswordLoading extends ChangePasswordState {}

final class ChangePasswordSuccess extends ChangePasswordState {}

final class ChangePasswordFailure extends ChangePasswordState {
  final String errMessage;

  ChangePasswordFailure({required this.errMessage});
}
