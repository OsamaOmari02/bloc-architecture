import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/validations/user_data_validation.dart';
import '../../../shared/widgets/general/text_widget.dart';

class PasswordValidationTextWidget extends StatelessWidget {
  const PasswordValidationTextWidget({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.01, bottom: height * 0.03),
      child: TextWidget(
        text: context.appLocalization.passwordValidationText,
        color: UserDataValidation.isPasswordValid(passwordController.text)
            ? Colors.green
            : Colors.red,
        minFontSize: 10,
        textAlign: TextAlign.center,
        size: width * 0.02,
      ),
    );
  }
}
