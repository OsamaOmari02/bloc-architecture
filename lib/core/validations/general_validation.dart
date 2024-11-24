import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:flutter/cupertino.dart';

class GeneralValidation {
  GeneralValidation._();
  static String? isRequired(BuildContext context, dynamic value) {
    if (value == null || value.toString().isEmpty) {
      return context.appLocalization.required;
    }
    return null;
  }

  static String? charactersLengthShouldBeMoreThan(
    BuildContext context,
    String value,
    int charLength,
  ) {
    if (value.length < charLength) {
      return context.appLocalization.enterMoreThan(charLength);
    }
    return null;
  }

  static String? shouldBeLessOrEqualTo(
    BuildContext context,
    num value,
    int maxValue,
  ) {
    if (value > maxValue) {
      return context.appLocalization.shouldBeLessThan(maxValue);
    }
    return null;
  }

  static String? shouldBeMoreOrEqualTo(
    BuildContext context,
    num value,
    int maxValue,
  ) {
    if (value < maxValue) {
      return context.appLocalization.shouldBeMoreThan(maxValue);
    }
    return null;
  }

  static String? fixedCharactersLength(
    BuildContext context,
    String value,
    int charLength,
  ) {
    if (value.length != charLength) {
      return context.appLocalization.enterExactly(charLength);
    }
    return null;
  }
}
