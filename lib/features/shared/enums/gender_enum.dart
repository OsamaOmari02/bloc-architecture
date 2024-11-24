import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:flutter/material.dart';

enum Gender {
  // ignore: unused_field
  _,
  male,
  female;

  static String type(BuildContext context, Gender gender) {
    switch (gender) {
      case Gender.male:
        return context.appLocalization.male;
      case Gender.female:
        return context.appLocalization.female;
      case Gender._:
        return '';
    }
  }
}
