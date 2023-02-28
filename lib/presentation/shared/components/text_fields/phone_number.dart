// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:shifacom/controllers/auth_provider.dart';
import 'package:shifacom/core/themes/light_theme.dart';
import 'package:shifacom/core/utlis/media_query.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({Key? key, required this.phoneController})
      : super(key: key);

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(getHeight(context) * 0.1),
        child: Container(
          padding: EdgeInsets.only(left: getWidth(context) * 0.02),
          color: lightFourthColor,
          child: InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {},
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.DIALOG,
            ),
            ignoreBlank: true,
            validator: (value) {
              if (value!.length != 9) {
                return 'الرجاء إدخال 9 ارقام';
              }
              return null;
            },
            maxLength: 9,
            initialValue: PhoneNumber(isoCode: 'JO'),
            inputDecoration: InputDecoration(
              filled: true,
              hintText: '_ _ _ _ _ _ _ _ _ _',
              fillColor: lightFourthColor,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              contentPadding: EdgeInsets.symmetric(
                  vertical: getHeight(context) * 0.01,
                  horizontal: getWidth(context) * 0.01),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            selectorTextStyle: const TextStyle(color: Colors.black),
            formatInput: false,
            textFieldController: phoneController,
            keyboardType: const TextInputType.numberWithOptions(
                signed: true, decimal: true),
            inputBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHeight(context) * 0.1),
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
            ),
            onSaved: (PhoneNumber number) {
              AuthProvider.phoneNumber = number.phoneNumber.toString();
            },
          ),
        ),
      ),
    );
  }
}
