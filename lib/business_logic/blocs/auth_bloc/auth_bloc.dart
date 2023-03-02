import 'package:bloc/bloc.dart';
import 'package:bloc_architecture/data/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository = AuthRepository();

  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoginLoadingState());
      await Future.delayed(const Duration(seconds: 2));
      emit(LoginSuccessState());
      // await _authRepository
      //     .login(event.context, event.email, event.password)
      //     .then((value) => emit(LoginSuccessState()))
      //     .catchError((e) => emit(LoginFailedState()));
    });
  }
}
