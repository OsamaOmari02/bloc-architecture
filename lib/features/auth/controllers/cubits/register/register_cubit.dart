import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/auth/data/classes/register_user_builder.dart';
import 'package:bloc_architecture/features/shared/classes/base_cubit_class.dart';
import 'package:meta/meta.dart';
import '../../../data/repositories/register_repository.dart';

part 'register_state.dart';

class RegisterCubit extends BaseCubit<RegisterState> {
  RegisterCubit({
    required RegisterRepository registerRepository,
    required CancelToken cancelToken,
  })  : _registerRepository = registerRepository,
        _cancelToken = cancelToken,
        super(RegisterInitial());

  final RegisterRepository _registerRepository;
  final CancelToken _cancelToken;

  final RegisterUserBuilder registerUserBuilder = RegisterUserBuilder();

  Future<void> register() async {
    try {
      safeEmit(RegisterLoading());
      await _registerRepository.register(
        registerUser: registerUserBuilder.build(),
      );
      safeEmit(RegisterSuccess());
    } catch (e) {
      safeEmit(RegisterFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
