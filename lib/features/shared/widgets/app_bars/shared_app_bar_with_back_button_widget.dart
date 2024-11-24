import 'package:bloc_architecture/features/shared/widgets/general/circular_back_button_widget.dart';
import 'package:flutter/material.dart';

class SharedAppBarWithBackButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SharedAppBarWithBackButtonWidget({
    super.key,
    this.onTap,
    this.backgroundColor,
  });

  final void Function()? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularBackButtonWidget(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
