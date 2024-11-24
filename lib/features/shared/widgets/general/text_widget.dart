import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    this.fontWeight,
    this.color,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.minFontSize = 11,
    this.isUnderlined = false,
    this.textOverflow,
    this.maxLines,
  });

  final double size;
  final String text;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDirection? textDirection;
  final bool isUnderlined;
  final double minFontSize;
  final TextOverflow? textOverflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      textDirection: textDirection,
      minFontSize: minFontSize,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: 'MuseoModerno',
        color: color,
        decoration:
            isUnderlined ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
