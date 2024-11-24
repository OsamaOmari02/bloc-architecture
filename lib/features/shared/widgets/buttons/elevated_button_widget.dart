import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors_constants.dart';
import '../general/text_widget.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.fontSize,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.borderRadius,
    this.isBorder = false,
    this.borderColor,
    this.trailingWidget,
    this.elevation = 0,
    this.leadingWidget,
    this.mainAxisAlignment,
    this.fontWeight = FontWeight.bold,
  });

  final void Function() onPressed;
  final String text;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final bool isBorder;
  final Color? borderColor;
  final Widget? trailingWidget;
  final double? elevation;
  final Widget? leadingWidget;
  final MainAxisAlignment? mainAxisAlignment;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = context.height;
    final double screenWidth = context.width;
    return Container(
      width: width,
      height: height ?? screenHeight * 0.05,
      decoration: BoxDecoration(
        borderRadius:
            borderRadius ?? BorderRadius.circular(screenHeight * 0.005),
        border: isBorder
            ? Border.all(color: borderColor ?? AppColors.primary)
            : null,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            backgroundColor ?? AppColors.primary,
          ),
          elevation: WidgetStateProperty.all(elevation),
        ),
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            if (leadingWidget != null) leadingWidget!,
            TextWidget(
              text: text,
              color: textColor ?? Colors.white,
              size: fontSize ?? screenWidth * 0.035,
              fontWeight: fontWeight,
            ),
            if (trailingWidget != null) trailingWidget!,
          ],
        ),
      ),
    );
  }
}
