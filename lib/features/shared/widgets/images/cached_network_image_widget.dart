import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.cacheHeight,
    this.cacheWidth,
    this.boxFit,
  });

  final String imageUrl;
  final double height;
  final double width;
  final double? cacheHeight;
  final double? cacheWidth;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => Container(
        height: height,
        width: width,
        color: Colors.grey,
      ),
      errorWidget: (context, url, error) => const Center(
        child: Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
      ),
      imageBuilder: (context, imageProvider) => Image(
        image: ResizeImage(
          imageProvider,
          height: cacheHeight?.round() ?? height.round(),
          width: cacheWidth?.round() ?? width.round(),
        ),
        height: height,
        width: width,
        fit: boxFit ?? BoxFit.fill,
      ),
      imageUrl: imageUrl,
    );
  }
}
