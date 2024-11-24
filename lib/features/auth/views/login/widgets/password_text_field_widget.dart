import 'package:bloc_architecture/core/validations/general_validation.dart';
import 'package:bloc_architecture/features/shared/providers/password_visibility_provider.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/app_colors_constants.dart';
import '../../../../shared/widgets/text_fields/text_form_field_widget.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  const PasswordTextFieldWidget({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordVisibilityProvider>(
      builder: (context, provider, child) => TextFormFieldWidget(
        keyboardType: TextInputType.visiblePassword,
        fillColor: AppColors.grey,
        isHidden: provider.isPasswordHidden,
        suffixWidget: InkWell(
          onTap: provider.toggleVisibility,
          child: Icon(
            provider.isPasswordHidden
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            size: context.height * 0.025,
            color: Colors.grey,
          ),
        ),
        controller: passwordController,
        maxLength: 20,
        validator: (value) => GeneralValidation.isRequired(context, value!),
      ),
    );
  }
}
