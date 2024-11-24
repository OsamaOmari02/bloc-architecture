import 'package:bloc_architecture/features/shared/enums/role_enum.dart';
import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/shared/classes/base_cubit_class.dart';
import 'package:meta/meta.dart';

import '../../../data/models/login_user_model.dart';
import '../../../data/repositories/login_repository.dart';

part 'login_state.dart';

class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit({
    required LoginRepository loginRepository,
    required CancelToken cancelToken,
  })  : _loginRepository = loginRepository,
        _cancelToken = cancelToken,
        super(LoginInitial());

  final LoginRepository _loginRepository;
  final CancelToken _cancelToken;

  Future<void> login(LoginUser loginUser) async {
    safeEmit(LoginLoading());
    try {
      final List<Role> roles =
          await _loginRepository.login(loginUser: loginUser);
      safeEmit(LoginSuccess(roles: roles));
    } catch (e) {
      safeEmit(LoginFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
