
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bloc_architecture/presentation/shared/components/text_widget.dart';
import 'package:flutter/material.dart';

import '../utlis/media_query.dart';


class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {Key? key,
      required this.title,
      this.trailingIcon,
      this.leadingIcon,
      required this.titleSize,
      this.onTap})
      : super(key: key);

  final String title;
  final double titleSize;
  final trailingIcon;
  final leadingIcon;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(context)*0.01),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(getHeight(context)*0.1),
        child: ListTile(
          title: TextWidget(
            textAlign: TextAlign.start,
            text: title,
            size: titleSize,
          ),
          leading: Icon(
            leadingIcon,
          ),
          trailing: Icon(
            trailingIcon,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
