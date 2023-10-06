import 'package:bloc_architecture/views/shared/components/text_widget.dart';
import 'package:bloc_architecture/views/shared/themes/light_theme.dart';
import 'package:bloc_architecture/views/shared/utils/media_query_util.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.fontSize,
      this.backgroundColor,
      this.textColor,
      this.width,
      this.height,
      this.borderRadius,
      this.isBorder = false
      })
      : super(key: key);

  final void Function() onPressed;
  final String text;
  final double fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final bool isBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(getHeight(context)*0.005),
        border: isBorder ? Border.all(color: lightFirstColor) : null,
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor ?? lightFirstColor)),
          child: TextWidget(
            text: text,
            color: textColor ?? Colors.white,
            size: fontSize,
          )),
    );
  }
}
