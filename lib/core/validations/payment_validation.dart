import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:flutter/cupertino.dart';

class PaymentValidation {
  PaymentValidation._();
  static String? cardNumberValidator(BuildContext context, String value) {
    if (value.length != 16) {
      return context.appLocalization.cardNumberInvalid;
    }
    return null;
  }

  static String? cvvValidator(BuildContext context, String value) {
    if (value.length != 3) {
      return context.appLocalization.enter3Digits;
    }
    return null;
  }

  static String? expiryDateValidator(BuildContext context, String value) {
    if (value.length != 5) {
      return context.appLocalization.expiryDateInvalid;
    }
    int month = int.parse(value.split('/').first);
    if (month > 12 || month < 1) {
      return context.appLocalization.expiryDate;
    }
    RegExp regex = RegExp(r'^\d{2}/\d{2}$'); // MM/YY format checker
    if (!regex.hasMatch(value)) {
      return context.appLocalization.expiryDate;
    }
    return null;
  }
}
