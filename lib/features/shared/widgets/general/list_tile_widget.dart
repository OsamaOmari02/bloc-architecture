import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {super.key,
      required this.title,
      this.trailingIcon,
      this.leadingIcon,
      required this.titleSize,
      this.onTap});

  final String title;
  final double titleSize;
  final IconData? trailingIcon;
  final IconData? leadingIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(height * 0.1),
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
