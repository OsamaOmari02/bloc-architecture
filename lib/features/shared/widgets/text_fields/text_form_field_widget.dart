import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants/app_colors_constants.dart';
import '../general/text_widget.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.controller,
    required this.keyboardType,
    this.hintText,
    this.labelText,
    this.validator,
    this.fillColor,
    this.maxLength,
    this.suffixWidget,
    this.prefixWidget,
    this.enabled = true,
    this.isMultiLines = false,
    this.isHidden = false,
    this.height,
    this.borderColor,
    this.borderWidth,
    this.autoFocus = false,
    this.floatingLabelBehavior = FloatingLabelBehavior.never,
    this.onChanged,
    this.helperText,
    this.inputFormatters,
    this.focusNode,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final int? maxLength;
  final bool enabled;
  final Color? fillColor;
  final bool isHidden;
  final bool isMultiLines;
  final double? height;
  final Color? borderColor;
  final double? borderWidth;
  final bool autoFocus;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final void Function(String)? onChanged;
  final String? helperText;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = context.height;
    final double screenWidth = context.width;
    return SizedBox(
      height: height,
      child: TextFormField(
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        enabled: enabled,
        focusNode: focusNode,
        controller: controller,
        style: TextStyle(
          fontSize: screenWidth * 0.03,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        autofocus: autoFocus,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        textAlignVertical:
            isMultiLines ? TextAlignVertical.top : TextAlignVertical.center,
        keyboardType: keyboardType,
        validator: validator,
        expands: isMultiLines,
        maxLines: isMultiLines ? null : 1,
        maxLength: maxLength,
        obscureText: isHidden,
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: screenWidth * 0.025),
          alignLabelWithHint: true,
          floatingLabelBehavior: floatingLabelBehavior,
          fillColor: fillColor ?? AppColors.grey,
          helperText: helperText,
          counterText: '',
          prefixIcon: prefixWidget,
          suffixIcon: suffixWidget,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          label: TextWidget(
            text: labelText ?? "",
            size: screenWidth * 0.03,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: prefixWidget != null ? 0 : screenWidth * 0.035,
            vertical: isMultiLines ? screenHeight * 0.01 : 0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: borderColor ?? Colors.white, width: borderWidth ?? 0),
            borderRadius: BorderRadius.circular(screenHeight * 0.01),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: borderColor ?? Colors.white, width: borderWidth ?? 0),
            borderRadius: BorderRadius.circular(screenHeight * 0.01),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: borderColor ?? Colors.white, width: borderWidth ?? 0),
            borderRadius: BorderRadius.circular(screenHeight * 0.01),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: borderColor ?? Colors.white, width: borderWidth ?? 0),
            borderRadius: BorderRadius.circular(screenHeight * 0.01),
          ),
        ),
      ),
    );
  }
}
