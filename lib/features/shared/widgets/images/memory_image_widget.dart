import 'dart:typed_data';
import 'package:flutter/material.dart';

class MemoryImageWidget extends StatelessWidget {
  const MemoryImageWidget({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.boxFit,
  });

  final Uint8List image;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      image,
      height: height,
      width: width,
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
