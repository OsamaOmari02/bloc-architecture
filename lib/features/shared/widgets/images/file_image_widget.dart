import 'dart:io';

import 'package:flutter/material.dart';

class FileImageWidget extends StatelessWidget {
  const FileImageWidget({
    super.key,
    required this.imagePath,
    required this.height,
    required this.width,
    this.cacheHeight,
    this.cacheWidth,
    this.boxFit,
  });

  final String imagePath;
  final double height;
  final double width;
  final double? cacheHeight;
  final double? cacheWidth;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.file(
      File(imagePath),
      height: height,
      width: width,
      cacheHeight: cacheHeight?.round() ?? height.round(),
      cacheWidth: cacheWidth?.round() ?? width.round(),
      fit: boxFit ?? BoxFit.fill,
      errorBuilder: (context, error, stackTrace) => const Center(
        child: Icon(
          Icons.error,
          color: Colors.red,
        ),
      ),
    );
  }
}
