import 'package:bloc_architecture/core/constants/app_colors_constants.dart';
import 'package:bloc_architecture/features/shared/extensions/go_router_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

class CircularBackButtonWidget extends StatelessWidget {
  const CircularBackButtonWidget({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    return InkWell(
      onTap: onPressed ?? context.safePop,
      child: CircleAvatar(
        radius: height * 0.03,
        backgroundColor: AppColors.grey,
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: height * 0.025,
        ),
      ),
    );
  }
}
