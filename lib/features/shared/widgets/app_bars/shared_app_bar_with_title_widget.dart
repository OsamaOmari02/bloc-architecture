import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';

class SharedAppBarWithTitleWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SharedAppBarWithTitleWidget({
    super.key,
    required this.text,
    this.backgroundColor,
    this.centerTitle = false,
  });

  final String text;
  final Color? backgroundColor;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      title: TextWidget(
        text: text,
        size: context.width * 0.04,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
