import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_colors_constants.dart';
import '../../../../../core/constants/routing_constants.dart';
import '../../../../shared/widgets/general/text_widget.dart';

class NoAccountWidget extends StatelessWidget {
  const NoAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: context.appLocalization.dontHaveAnAccount,
            size: width * 0.03,
          ),
          InkWell(
            onTap: () => context.pushNamed(RoutingConstants.registerPage),
            child: TextWidget(
              text: '  ${context.appLocalization.signUp}',
              size: width * 0.03,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
