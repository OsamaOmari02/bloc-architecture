import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => onPressed,
      child: Text(title),
    );
  }
}
