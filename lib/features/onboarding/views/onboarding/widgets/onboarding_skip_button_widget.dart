import 'package:bloc_architecture/core/constants/cache_constants.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/routing_constants.dart';
import '../../../../../core/services/shared_pref_service.dart';
import '../../../../shared/widgets/general/text_widget.dart';

class OnboardingSkipButtonWidget extends StatelessWidget {
  const OnboardingSkipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        SharedPrefService.setBool(
          CacheConstants.isOnboardingViewed,
          true,
        );
        context.goNamed(RoutingConstants.loginPage);
      },
      child: TextWidget(
        text: context.appLocalization.skip,
        color: Colors.black,
        size: context.width * 0.035,
      ),
    );
  }
}
