import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/circular_back_button_widget.dart';
import 'package:flutter/material.dart';
import '../images/svg_image_widget.dart';

class SharedAppBarWithBackButtonAndAppLogoWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SharedAppBarWithBackButtonAndAppLogoWidget({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularBackButtonWidget(onPressed: onTap),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: SvgImageWidget(
            imagePath: 'app_logo.svg',
            height: height * 0.045,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
