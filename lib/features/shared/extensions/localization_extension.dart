import 'package:bloc_architecture/core/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

extension Localization on BuildContext {
  AppLocalization get appLocalization => AppLocalization.of(this);
}
