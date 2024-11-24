import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/shared/classes/base_cubit_class.dart';
import 'package:meta/meta.dart';

import '../../../data/repositories/forget_password_repository.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends BaseCubit<ForgetPasswordState> {
  ForgetPasswordCubit({
    required ForgetPasswordRepository forgetPasswordRepository,
    required CancelToken cancelToken,
  })  : _forgetPasswordRepository = forgetPasswordRepository,
        _cancelToken = cancelToken,
        super(ForgetPasswordInitial());

  final ForgetPasswordRepository _forgetPasswordRepository;
  final CancelToken _cancelToken;

  Future<void> forgetPassword(String email) async {
    safeEmit(ForgetPasswordLoading());
    try {
      final String message =
          await _forgetPasswordRepository.forgetPassword(email: email);
      safeEmit(ForgetPasswordSuccess(successMsg: message));
    } catch (e) {
      safeEmit(ForgetPasswordFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
