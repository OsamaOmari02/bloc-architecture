import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/image_paths_constants.dart';
import '../general/loading_widget.dart';

class SvgImageWidget extends StatelessWidget {
  const SvgImageWidget({
    super.key,
    required this.imagePath,
    this.height,
    this.width,
    this.color,
  });

  final String imagePath;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ImagePathsConstants.svgPath + imagePath,
      height: height,
      width: width,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      fit: BoxFit.contain,
      placeholderBuilder: (context) => const Center(child: LoadingWidget()),
    );
  }
}
