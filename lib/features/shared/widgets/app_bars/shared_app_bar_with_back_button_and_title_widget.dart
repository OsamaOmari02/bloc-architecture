import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/circular_back_button_widget.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';

class SharedAppBarWithBackButtonAndTitleWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SharedAppBarWithBackButtonAndTitleWidget({
    super.key,
    this.onTap,
    this.backgroundColor,
    this.centerTitle = false,
    required this.title,
  });

  final void Function()? onTap;
  final Color? backgroundColor;
  final bool? centerTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    final double width = context.width;
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      title: TextWidget(text: title, size: width * 0.04),
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularBackButtonWidget(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
