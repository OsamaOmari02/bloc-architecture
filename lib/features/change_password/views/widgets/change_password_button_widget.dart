import 'package:bloc_architecture/features/shared/extensions/go_router_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/toast_message_service.dart';
import '../../../shared/widgets/buttons/elevated_button_widget.dart';
import '../../../shared/widgets/general/loading_widget.dart';
import '../../controllers/cubits/change_password/change_password_cubit.dart';
import '../../data/models/change_password_model.dart';

class ChangePasswordButtonWidget extends StatelessWidget {
  const ChangePasswordButtonWidget({
    super.key,
    required this.formKey,
    required this.currentPasswordController,
    required this.newPasswordController,
    required this.confirmPasswordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController currentPasswordController;
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {
        if (state is ChangePasswordSuccess) {
          ToastMessageService.showSuccessMessage(
            context.appLocalization.changePasswordSuccessMessage,
          );
          context.safePop();
        }
        if (state is ChangePasswordFailure) {
          ToastMessageService.showErrorMessage(state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is ChangePasswordLoading) {
          return SizedBox(
            height: context.height * 0.1,
            child: const LoadingWidget(),
          );
        }
        return ElevatedButtonWidget(
          onPressed: () {
            if (formKey.currentState!.validate() &&
                newPasswordController.text == confirmPasswordController.text) {
              formKey.currentState!.save();
              context.read<ChangePasswordCubit>().changePassword(
                    ChangePassword(
                      currentPassword: currentPasswordController.text.trim(),
                      newPassword: newPasswordController.text.trim(),
                      confirmPassword: confirmPasswordController.text.trim(),
                    ),
                  );
            }
          },
          text: context.appLocalization.saveNewPassword,
        );
      },
    );
  }
}
