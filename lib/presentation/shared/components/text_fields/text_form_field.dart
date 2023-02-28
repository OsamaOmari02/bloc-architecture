
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:shifacom/core/components/text_widget.dart';
import 'package:shifacom/core/themes/light_theme.dart';
import 'package:shifacom/core/utlis/media_query.dart';

// ignore: must_be_immutable
class TextFormFiledWidget extends StatefulWidget {
  TextFormFiledWidget({
    Key? key,
    required this.controller,
    required this.keyboardType,
    required this.padding,
    this.isPassword = false,
    this.hintText,
    this.labelText,
    this.validator,
    this.onChanged,
    this.onTap,
  }) : super(key: key);
  TextEditingController controller = TextEditingController();
  final String? hintText;
  final String? labelText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final double padding;
  final bool isPassword;
  bool isHidden = true;
  Function(String)? onChanged;
  void Function()? onTap;
  @override
  State<TextFormFiledWidget> createState() => _TextFormFiledWidgetState();
}

class _TextFormFiledWidgetState extends State<TextFormFiledWidget> {

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding),
      child: PlatformTextFormField(
        obscureText: widget.isPassword ? widget.isHidden : null,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        validator: widget.validator,
        onChanged: widget.onChanged,
        material: (context, platform) => MaterialTextFormFieldData(
          onTap: widget.onTap,
          controller: widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword
                ? InkWell(
                    onTap: () {
                      setState(() {
                        widget.isHidden = !widget.isHidden;
                      });
                    },
                    child: Icon(widget.isHidden
                        ? Icons.visibility_off
                        : Icons.remove_red_eye),
                  )
                : null,
            filled: true,
            fillColor: lightFourthColor,
            hintText: widget.hintText,
            label: Text(widget.labelText ?? ""),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: EdgeInsets.symmetric(
                vertical: getHeight(context) * 0.02,
                horizontal: getWidth(context) * 0.05),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHeight(context) * 0.1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHeight(context) * 0.1),
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(getHeight(context) * 0.1),
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
            ),
          ),
        ),
        cupertino: (context, platform) => CupertinoTextFormFieldData(
          decoration: BoxDecoration(
            color: lightFourthColor,
            borderRadius: BorderRadius.circular(getHeight(context) * 0.1),
          ),
          padding: EdgeInsets.symmetric(
              vertical: getHeight(context) * 0.02,
              horizontal: getWidth(context) * 0.05),
          placeholder: widget.hintText,
          prefix: TextWidget(
            text: widget.labelText ?? "",
            size: getHeight(context) * 0.05,
          ),
        ),
      ),
    );
  }
}
