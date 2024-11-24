import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../shared/classes/base_cubit_class.dart';
import '../../../data/repositories/logout_repository.dart';

part 'logout_state.dart';

class LogoutCubit extends BaseCubit<LogoutState> {
  LogoutCubit({
    required LogoutRepository logoutRepository,
    required CancelToken cancelToken,
  })  : _logoutRepository = logoutRepository,
        _cancelToken = cancelToken,
        super(LogoutInitial());

  final LogoutRepository _logoutRepository;
  final CancelToken _cancelToken;

  Future<void> logout() async {
    try {
      safeEmit(LogoutLoading());
      await _logoutRepository.logout();
      safeEmit(LogoutSuccess());
    } catch (e) {
      safeEmit(LogoutFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
