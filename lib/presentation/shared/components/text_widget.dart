import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final double size;
  final String text;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Color? color;
  final bool isShadowed;
  final TextDirection? textDirection;
  const TextWidget(
      {super.key,
      required this.text,
      required this.size,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.textDirection,
      this.isShadowed = false});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      textDirection: textDirection,
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        fontSize: size,
        ///install font
        // fontFamily: 'Tajawal',
        fontWeight: fontWeight,
        color: color,
        shadows: isShadowed
            ? const <Shadow>[
                Shadow(
                  offset: Offset(0.0, 2),
                  blurRadius: 16.0,
                  color: Color.fromARGB(125, 0, 0, 255),
                ),
              ]
            : null,
      ),
    );
  }
}
