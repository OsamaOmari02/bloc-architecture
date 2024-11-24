part of 'verification_code_cubit.dart';

@immutable
sealed class VerificationCodeState {}

final class VerificationCodeInitial extends VerificationCodeState {}

final class ResendVerificationCodeLoading extends VerificationCodeState {}

final class ResendVerificationCodeSuccess extends VerificationCodeState {
  final String successMsg;
  ResendVerificationCodeSuccess({required this.successMsg});
}

final class ResendVerificationCodeFailure extends VerificationCodeState {
  final String errMessage;
  ResendVerificationCodeFailure({required this.errMessage});
}

final class CheckVerificationCodeLoading extends VerificationCodeState {}

final class CheckVerificationCodeSuccess extends VerificationCodeState {
  final String otpToken;
  CheckVerificationCodeSuccess({required this.otpToken});
}

final class CheckVerificationCodeFailure extends VerificationCodeState {
  final String errMessage;
  CheckVerificationCodeFailure({required this.errMessage});
}
