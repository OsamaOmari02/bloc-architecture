import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/auth/data/repositories/reset_password_repository.dart';
import 'package:bloc_architecture/features/shared/enums/role_enum.dart';
import 'package:bloc_architecture/features/shared/classes/base_cubit_class.dart';
import 'package:meta/meta.dart';

import '../../../data/models/reset_password_model.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends BaseCubit<ResetPasswordState> {
  ResetPasswordCubit({
    required ResetPasswordRepository resetPasswordRepository,
    required CancelToken cancelToken,
  })  : _resetPasswordRepository = resetPasswordRepository,
        _cancelToken = cancelToken,
        super(ResetPasswordInitial());

  final ResetPasswordRepository _resetPasswordRepository;
  final CancelToken _cancelToken;

  Future<void> resetPassword(ResetPassword resetPassword) async {
    try {
      safeEmit(ResetPasswordLoading());
      final (List<Role>, String) res =
          await _resetPasswordRepository.resetPassword(
        resetPassword: resetPassword,
      );
      safeEmit(ResetPasswordSuccess(
        roles: res.$1,
        successMessage: res.$2,
      ));
    } catch (e) {
      safeEmit(ResetPasswordFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
