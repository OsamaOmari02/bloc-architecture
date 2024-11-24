import 'package:bloc_architecture/core/constants/routing_constants.dart';
import 'package:bloc_architecture/features/auth/controllers/cubits/logout/logout_cubit.dart';
import 'package:bloc_architecture/features/auth/controllers/cubits/reset_password/reset_password_cubit.dart';
import 'package:bloc_architecture/features/auth/data/models/reset_password_model.dart';
import 'package:bloc_architecture/features/shared/enums/role_enum.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/services/toast_message_service.dart';
import '../../../../shared/widgets/buttons/elevated_button_widget.dart';
import '../../../../shared/widgets/general/loading_widget.dart';

class ResetPasswordButtonWidget extends StatelessWidget {
  const ResetPasswordButtonWidget({
    super.key,
    required this.formKey,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.otpToken,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final String otpToken;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogoutCubit>(
      create: (context) => sl.get<LogoutCubit>(),
      child: BlocListener<LogoutCubit, LogoutState>(
        listener: (context, state) {
          if (state is LogoutSuccess) {
            context.goNamed(RoutingConstants.loginPage);
          }
        },
        child: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
          listener: (context, state) {
            if (state is ResetPasswordSuccess) {
              if (!state.roles.contains(Role.medicalServiceProvider)) {
                context.read<LogoutCubit>().logout();
                ToastMessageService.showErrorMessage(
                  context.appLocalization.youDontHavePermissionToAccessApp,
                );
                context.goNamed(RoutingConstants.loginPage);
              } else {
                ToastMessageService.showSuccessMessage(state.successMessage);
                context.goNamed(RoutingConstants.homePage);
              }
            }
            if (state is ResetPasswordFailure) {
              ToastMessageService.showErrorMessage(state.errMessage);
            }
          },
          builder: (context, state) {
            if (state is ResetPasswordLoading) {
              return const LoadingWidget();
            }
            return ElevatedButtonWidget(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<ResetPasswordCubit>().resetPassword(
                        ResetPassword(
                          password: passwordController.text.trim(),
                          confirmPassword:
                              confirmPasswordController.text.trim(),
                          otpToken: otpToken,
                        ),
                      );
                }
              },
              text: context.appLocalization.save,
            );
          },
        ),
      ),
    );
  }
}
