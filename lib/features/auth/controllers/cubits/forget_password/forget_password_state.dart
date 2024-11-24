part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ForgetPasswordLoading extends ForgetPasswordState {}

final class ForgetPasswordSuccess extends ForgetPasswordState {
  final String successMsg;

  ForgetPasswordSuccess({required this.successMsg});
}

final class ForgetPasswordFailure extends ForgetPasswordState {
  final String errMessage;
  ForgetPasswordFailure({required this.errMessage});
}