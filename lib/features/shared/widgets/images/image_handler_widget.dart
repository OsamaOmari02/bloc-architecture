import 'package:flutter/material.dart';

import 'asset_image_widget.dart';
import 'cached_network_image_widget.dart';
import 'file_image_widget.dart';

class ImageHandlerWidget extends StatelessWidget {
  const ImageHandlerWidget({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.cacheHeight,
    this.cacheWidth,
    this.boxFit,
  });

  final String? imageUrl;
  final double height;
  final double width;
  final double? cacheHeight;
  final double? cacheWidth;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return AssetImageWidget(
        imagePath: 'no_user.jpg',
        height: height,
        width: width,
        cacheHeight: cacheHeight,
        cacheWidth: cacheWidth,
        boxFit: boxFit,
      );
    }
    if (imageUrl!.startsWith('http')) {
      return CachedNetworkImageWidget(
        imageUrl: imageUrl!,
        height: height,
        width: width,
        cacheHeight: cacheHeight,
        cacheWidth: cacheWidth,
        boxFit: boxFit,
      );
    }
    return FileImageWidget(
      imagePath: imageUrl!,
      height: height,
      width: width,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      boxFit: boxFit,
    );
  }
}
