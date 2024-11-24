import 'package:bloc_architecture/core/validations/user_data_validation.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/constants/app_colors_constants.dart';

class IntlPhoneNumberFieldWidget extends StatelessWidget {
  const IntlPhoneNumberFieldWidget({
    super.key,
    required this.phoneNumberController,
  });

  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;

    return IntlPhoneField(
      controller: phoneNumberController,
      validator: (number) => UserDataValidation.phoneNumber(
        context,
        number.toString(),
      ),
      dropdownIconPosition: IconPosition.trailing,
      dropdownIcon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Colors.grey,
      ),
      flagsButtonPadding: const EdgeInsetsDirectional.only(start: 5),
      style: TextStyle(
        fontSize: width * 0.035,
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        label: TextWidget(
          text: context.appLocalization.enterYourPhoneNumber,
          size: width * 0.025,
        ),
        fillColor: AppColors.grey,
        contentPadding: EdgeInsets.symmetric(horizontal: height * 0.02),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(height * 0.01),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(height * 0.01),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(height * 0.01),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(height * 0.01),
        ),
      ),
      initialCountryCode: 'JO',
      onChanged: (phone) {},
    );
  }
}
