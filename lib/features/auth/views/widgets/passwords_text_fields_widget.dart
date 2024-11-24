import 'package:bloc_architecture/core/validations/user_data_validation.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors_constants.dart';
import '../../../shared/widgets/general/required_title_widget.dart';
import '../../../shared/widgets/text_fields/text_form_field_widget.dart';
import '../../../shared/providers/password_visibility_provider.dart';

class PasswordsTextFieldsWidget extends StatelessWidget {
  const PasswordsTextFieldsWidget({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    return Consumer<PasswordVisibilityProvider>(
      builder: (context, provider, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RequiredTitleWidget(
            title: context.appLocalization.password,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.01,
              bottom: height * 0.02,
            ),
            child: TextFormFieldWidget(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              fillColor: AppColors.grey,
              isHidden: provider.isPasswordHidden,
              suffixWidget: InkWell(
                onTap: () => provider.toggleVisibility(),
                child: Icon(
                  provider.isPasswordHidden
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Colors.grey,
                ),
              ),
              maxLength: 20,
              validator: (value) =>
                  UserDataValidation.password(context, value!),
            ),
          ),
          RequiredTitleWidget(
            title: context.appLocalization.confirmPassword,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.01,
              bottom: height * 0.02,
            ),
            child: TextFormFieldWidget(
              controller: confirmPasswordController,
              keyboardType: TextInputType.visiblePassword,
              fillColor: AppColors.grey,
              isHidden: provider.isPasswordHidden,
              suffixWidget: InkWell(
                onTap: () => provider.toggleVisibility(),
                child: Icon(
                  provider.isPasswordHidden
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Colors.grey,
                ),
              ),
              maxLength: 20,
              validator: (value) =>
                  UserDataValidation.password(context, value!),
            ),
          ),
        ],
      ),
    );
  }
}
