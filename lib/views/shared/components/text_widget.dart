import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.size,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.textDirection,
      this.minFontSize = 11,
      this.isUnderlined = false});

  final double size;
  final String text;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDirection? textDirection;
  final bool isUnderlined;
  final double minFontSize;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      textDirection: textDirection,
      minFontSize: minFontSize,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
          fontSize: size,
          fontFamily: 'ArbFONTS-Montserrat-Arabic',
          fontWeight: fontWeight,
          color: color,
          decoration:
              isUnderlined ? TextDecoration.underline : TextDecoration.none),
    );
  }
}
