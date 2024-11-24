import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/routing_constants.dart';
import '../../../core/services/dialog_service.dart';
import '../../../core/services/shared_pref_service.dart';

Future<String?>? showGuestAlertDialog(BuildContext context) =>
    DialogService.showAlertDialogWithOptions(
      context: context,
      text: context.appLocalization.youHaveToLoginFirst,
      option1: context.appLocalization.signIn,
      option2: context.appLocalization.cancel,
      onPressed: () {
        SharedPrefService.removeInstance(CacheConstants.isGuest);
        context.goNamed(RoutingConstants.loginPage);
      },
    );
