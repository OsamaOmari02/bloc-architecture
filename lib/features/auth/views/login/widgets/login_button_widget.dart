import 'package:bloc_architecture/features/auth/controllers/cubits/login/login_cubit.dart';
import 'package:bloc_architecture/features/auth/controllers/cubits/logout/logout_cubit.dart';
import 'package:bloc_architecture/features/auth/data/models/login_user_model.dart';
import 'package:bloc_architecture/features/shared/enums/role_enum.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/routing_constants.dart';
import '../../../../../core/services/toast_message_service.dart';

import '../../../../shared/widgets/buttons/elevated_button_widget.dart';
import '../../../../shared/widgets/general/loading_widget.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    final double width = context.width;
    return BlocProvider(
      create: (context) => sl.get<LogoutCubit>(),
      child: BlocListener<LogoutCubit, LogoutState>(
        listener: (context, state) {
          if (state is LogoutSuccess) {
            context.goNamed(RoutingConstants.loginPage);
          }
        },
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              if (!state.roles.contains(Role.medicalServiceProvider)) {
                context.read<LogoutCubit>().logout();
                ToastMessageService.showErrorMessage(
                  context.appLocalization.youDontHavePermissionToAccessApp,
                );
                formKey.currentState?.reset();
                emailController.clear();
                passwordController.clear();
              } else {
                context.goNamed(RoutingConstants.homePage);
              }
            }
            if (state is LoginFailure) {
              ToastMessageService.showErrorMessage(state.errMessage);
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return const LoadingWidget();
            }
            return ElevatedButtonWidget(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<LoginCubit>().login(
                        LoginUser(
                          email: emailController.text,
                          password: passwordController.text,
                        ),
                      );
                }
              },
              text: context.appLocalization.continueText,
              fontSize: width * 0.04,
            );
          },
        ),
      ),
    );
  }
}
