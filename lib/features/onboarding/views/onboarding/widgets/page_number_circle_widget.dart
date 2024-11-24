import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../../../core/constants/app_colors_constants.dart';

class PageNumberCircleWidget extends StatelessWidget {
  final int currentPage;
  final VoidCallback onNextPage;

  const PageNumberCircleWidget({
    super.key,
    required this.currentPage,
    required this.onNextPage,
  });

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;

    return InkWell(
      onTap: onNextPage,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: height * 0.07,
            height: height * 0.07,
            child: CustomPaint(
              painter: ProgressPainter(progress: currentPage / 3),
            ),
          ),
          Container(
            width: width * 0.09,
            height: height * 0.08,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary,
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: height * 0.02,
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final double progress;

  ProgressPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final double outerRadius = (size.width / 2);
    final double progressRadius = outerRadius - 8.0 / 2;

    final Paint outerCirclePaint = Paint()
      ..color = AppColors.primary.withOpacity(0.2)
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final Paint progressPaint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(
      size.center(Offset.zero),
      progressRadius,
      outerCirclePaint,
    );

    final Rect arcRect = Rect.fromCircle(
      center: size.center(Offset.zero),
      radius: progressRadius,
    );

    canvas.drawArc(
      arcRect,
      -pi / 2,
      2 * pi * progress,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
