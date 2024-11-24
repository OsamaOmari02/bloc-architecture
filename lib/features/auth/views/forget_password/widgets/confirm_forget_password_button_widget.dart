import 'package:bloc_architecture/core/constants/routing_constants.dart';
import 'package:bloc_architecture/features/auth/controllers/cubits/forget_password/forget_password_cubit.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/services/toast_message_service.dart';
import '../../../../shared/widgets/buttons/elevated_button_widget.dart';
import '../../../../shared/widgets/general/loading_widget.dart';

class ConfirmForgetPasswordButtonWidget extends StatelessWidget {
  const ConfirmForgetPasswordButtonWidget({
    super.key,
    required this.formKey,
    required this.emailController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    final double width = context.width;
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is ForgetPasswordSuccess) {
          ToastMessageService.showSuccessMessage(
            state.successMsg,
          );
          context.pushNamed(
            RoutingConstants.verificationPage,
            pathParameters: {'email': emailController.text},
          );
        }
        if (state is ForgetPasswordFailure) {
          ToastMessageService.showErrorMessage(
            state.errMessage,
          );
        }
      },
      builder: (context, state) {
        if (state is ForgetPasswordLoading) {
          return const LoadingWidget();
        }
        return ElevatedButtonWidget(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              context.read<ForgetPasswordCubit>().forgetPassword(
                    emailController.text.trim(),
                  );
            }
          },
          text: context.appLocalization.continueText,
          fontSize: width * 0.035,
        );
      },
    );
  }
}
