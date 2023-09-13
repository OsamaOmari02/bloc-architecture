import 'package:bloc_architecture/views/pages/layouts/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

class LayoutsPage extends StatelessWidget {
  const LayoutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BottomNavigationBarWidget(),
    );
  }
}
