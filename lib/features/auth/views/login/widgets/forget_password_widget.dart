import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../../../core/constants/routing_constants.dart';
import '../../../../shared/widgets/general/text_widget.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = context.width;
    return InkWell(
      onTap: () => context.pushNamed(RoutingConstants.forgetPasswordPage),
      child: TextWidget(
        text: context.appLocalization.didYouForgetPassword,
        size: width * 0.03,
        textAlign: TextAlign.end,
      ),
    );
  }
}
