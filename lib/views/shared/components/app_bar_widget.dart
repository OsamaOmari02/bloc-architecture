import 'package:bloc_architecture/views/shared/components/text_widget.dart';
import 'package:bloc_architecture/views/shared/utlis/media_query_util.dart';
import 'package:flutter/material.dart';

class SharedAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const SharedAppBarWidget({Key? key,required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextWidget(
        text: text,
        size: getWidth(context) * 0.04,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
