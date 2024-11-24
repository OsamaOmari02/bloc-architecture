import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/auth/data/repositories/verification_code_repository.dart';
import 'package:bloc_architecture/features/shared/classes/base_cubit_class.dart';
import 'package:meta/meta.dart';

part 'verification_code_state.dart';

class VerificationCodeCubit extends BaseCubit<VerificationCodeState> {
  VerificationCodeCubit({
    required VerificationCodeRepository verificationCodeRepository,
    required CancelToken cancelToken,
  })  : _verificationCodeRepository = verificationCodeRepository,
        _cancelToken = cancelToken,
        super(VerificationCodeInitial());

  final VerificationCodeRepository _verificationCodeRepository;
  final CancelToken _cancelToken;

  Future<void> checkVerificationCode(String otp) async {
    try {
      safeEmit(CheckVerificationCodeLoading());
      final String otpToken =
          await _verificationCodeRepository.checkVerificationCode(otp: otp);
      safeEmit(CheckVerificationCodeSuccess(otpToken: otpToken));
    } catch (e) {
      safeEmit(CheckVerificationCodeFailure(errMessage: e.toString()));
    }
  }

  Future<void> resendVerificationCode(String email) async {
    try {
      safeEmit(ResendVerificationCodeLoading());
      final String message = await _verificationCodeRepository
          .resendVerificationCode(email: email);
      safeEmit(ResendVerificationCodeSuccess(successMsg: message));
    } catch (e) {
      safeEmit(ResendVerificationCodeFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
