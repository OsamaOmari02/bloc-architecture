import 'package:bloc_architecture/views/shared/components/text_widget.dart';
import 'package:bloc_architecture/views/shared/themes/light_theme.dart';
import 'package:bloc_architecture/views/shared/utlis/media_query_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {Key? key,
      this.controller,
      required this.keyboardType,
      this.hintText,
      this.labelText,
      this.validator,
      this.fillColor,
      this.maxLength,
      this.suffixIcon,
      this.onIconPressed,
      this.prefixIcon,
      this.enabled = true,
      this.isMultiLines = false,
      this.isPassword = false,
      this.height,
      this.border,
      this.autoFocus = false,
      this.onChanged})
      : super(key: key);
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final IconData? suffixIcon;
  final VoidCallback? onIconPressed;
  final int? maxLength;
  final bool enabled;
  final Color? fillColor;
  final bool isPassword;
  final IconData? prefixIcon;
  final bool isMultiLines;
  final double? height;
  final double? border;
  final bool autoFocus;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        autofocus: autoFocus,
        onChanged: onChanged,
        textAlignVertical:
            isMultiLines ? TextAlignVertical.top : TextAlignVertical.center,
        keyboardType: keyboardType,
        validator: validator,
        expands: isMultiLines,
        maxLines: isMultiLines ? null : 1,
        maxLength: maxLength,
        obscureText: isPassword,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          floatingLabelBehavior: isMultiLines
              ? FloatingLabelBehavior.never
              : FloatingLabelBehavior.auto,
          fillColor: fillColor ?? lightFifthColor,
          counterText: '',
          prefixIcon: prefixIcon == null
              ? null
              : Icon(
                  prefixIcon,
                  size: getHeight(context) * 0.025,
                  color: Colors.black45,
                ),
          suffixIcon: InkWell(
              onTap: onIconPressed,
              child: Icon(suffixIcon,
                  size: getHeight(context) * 0.02,
                  color: Colors.black45)),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.black45),
          label: TextWidget(
              text: labelText ?? "",
              size: getWidth(context) * 0.01,
              color: Colors.black45),
          contentPadding: EdgeInsets.symmetric(
              horizontal: prefixIcon != null ? 0 : getWidth(context) * 0.035,
              vertical: isMultiLines ? getHeight(context) * 0.01 : 0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: border == null ? Colors.grey : fillColor!,
                width: border ?? 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(getHeight(context) * 0.01)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: border == null ? Colors.grey : fillColor!,
                width: border ?? 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(getHeight(context) * 0.01)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: border == null ? Colors.grey : fillColor!,
                width: border ?? 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(getHeight(context) * 0.01)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: border == null ? Colors.grey : fillColor!,
                width: border ?? 0.5),
            borderRadius:
                BorderRadius.all(Radius.circular(getHeight(context) * 0.01)),
          ),
        ),
      ),
    );
  }
}
