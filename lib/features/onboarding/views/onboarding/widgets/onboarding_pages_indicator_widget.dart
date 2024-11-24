import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors_constants.dart';

class OnboardingPagesIndicatorWidget extends StatelessWidget {
  const OnboardingPagesIndicatorWidget({
    super.key,
    required this.pageNumber,
  });

  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    final double width = context.width;
    final double height = context.height;
    return SizedBox(
      width: width * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 1; i <= 3; i++)
            i == pageNumber
                ? Container(
                    height: height * 0.01,
                    width: width * 0.06,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                : const CircleAvatar(
                    radius: 4.5,
                    backgroundColor: Colors.black12,
                  ),
        ],
      ),
    );
  }
}
