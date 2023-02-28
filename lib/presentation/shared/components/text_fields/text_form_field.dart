import 'package:flutter/material.dart';

class TextFormFiledWidget extends StatelessWidget {
  TextFormFiledWidget(
      {Key? key,
      required this.controller,
      required this.keyboardType,
      // this.validator,
      this.hintText,
      this.labelText,
      this.validator})
      : super(key: key);
  TextEditingController controller = TextEditingController();
  final String? hintText;
  final String? labelText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            label: Text(labelText ?? ""),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
          ),
        ));
  }
}
