import 'package:bloc_architecture/core/constants/app_colors_constants.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';

import '../images/svg_image_widget.dart';

class ContainerListTileWidget extends StatelessWidget {
  const ContainerListTileWidget({
    super.key,
    this.icon,
    this.iconsColor,
    this.svgImagePath,
    this.imageColor,
    this.imageHeight,
    required this.text,
    this.textColor,
    required this.onTap,
    this.extraText,
    this.isArrowIcon = true,
  });

  final IconData? icon;
  final Color? iconsColor;
  final String? svgImagePath;
  final Color? imageColor;
  final double? imageHeight;
  final String text;
  final Color? textColor;
  final String? extraText;
  final void Function()? onTap;
  final bool isArrowIcon;
  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(height * 0.01),
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: EdgeInsets.all(height * 0.025),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: height * 0.027,
                color: iconsColor ?? Colors.black54,
              ),
            if (svgImagePath != null)
              SvgImageWidget(
                imagePath: svgImagePath!,
                height: imageHeight ?? height * 0.024,
                color: imageColor,
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: TextWidget(
                text: text,
                size: width * 0.032,
                color: textColor,
              ),
            ),
            const Spacer(),
            if (extraText != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextWidget(
                  text: extraText!,
                  size: width * 0.03,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            if (isArrowIcon)
              Icon(
                Icons.arrow_forward_ios,
                size: height * 0.02,
                color: iconsColor ?? Colors.grey,
              ),
          ],
        ),
      ),
    );
  }
}
