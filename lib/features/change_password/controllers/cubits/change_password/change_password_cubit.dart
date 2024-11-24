import '../../../../shared/classes/base_cubit_class.dart';
import '../../../data/models/change_password_model.dart';
import '../../../data/repositories/change_password_repository.dart';
import 'package:dio/dio.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends BaseCubit<ChangePasswordState> {
  ChangePasswordCubit({
    required ChangePasswordRepository changePasswordRepository,
    required CancelToken cancelToken,
  })  : _changePasswordRepository = changePasswordRepository,
        _cancelToken = cancelToken,
        super(ChangePasswordInitial());

  final ChangePasswordRepository _changePasswordRepository;
  final CancelToken _cancelToken;

  Future<void> changePassword(ChangePassword changePassword) async {
    safeEmit(ChangePasswordLoading());
    try {
      await _changePasswordRepository.changePassword(
        changePassword: changePassword,
      );
      safeEmit(ChangePasswordSuccess());
    } catch (e) {
      safeEmit(ChangePasswordFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
