import 'package:bloc_architecture/core/constants/app_colors_constants.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

class RequiredTitleWidget extends StatelessWidget {
  const RequiredTitleWidget({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: context.width * 0.035,
          fontFamily: 'MuseoModerno',
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const TextSpan(
            text: ' *',
            style: TextStyle(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
