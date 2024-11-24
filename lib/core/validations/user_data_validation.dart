import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:flutter/cupertino.dart';

class UserDataValidation {
  UserDataValidation._();
  static String? username(BuildContext context, String value) {
    if (value.length < 3) {
      return context.appLocalization.usernameInvalid;
    }
    return null;
  }

  static String? phoneNumber(BuildContext context, String value) {
    if (value.length < 5 || value.length > 20) {
      return context.appLocalization.phoneNumberInvalid;
    }
    return null;
  }

  static String? email(BuildContext context, String value) {
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return context.appLocalization.emailInvalid;
    }
    return null;
  }

  static String? password(BuildContext context, String value) {
    if (!isPasswordValid(value)) {
      return context.appLocalization.passwordInvalid;
    }
    return null;
  }

  static bool lowerCase(String value) {
    return RegExp(r'(?=.*[a-z])').hasMatch(value);
  }

  static bool upperCase(String value) {
    return RegExp(r'(?=.*[A-Z])').hasMatch(value);
  }

  static bool number(String value) {
    return RegExp(r'(?=.*[0-9])').hasMatch(value);
  }

  static bool specialCharacter(String value) {
    return RegExp(r"[.\*/\-_=!@#\$%\^&\*\(\)\|\,]").hasMatch(value);
  }

  static bool isPasswordValid(String value) {
    return (lowerCase(value) &&
        upperCase(value) &&
        number(value) &&
        specialCharacter(value));
  }
}
