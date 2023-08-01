import 'package:bloc_architecture/views/shared/components/text_widget.dart';
import 'package:bloc_architecture/views/shared/utlis/media_query.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: TextWidget(text: title,size: getHeight(context)*0.03,),
    );
  }
}
