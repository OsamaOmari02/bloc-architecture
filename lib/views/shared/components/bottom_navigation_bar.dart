import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationBarItems,
      elevation: 5,
      // currentIndex: controller index,
      selectedIconTheme: const IconThemeData(size: 30),
      selectedFontSize: 14,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedFontSize: 11,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
      //  controller method
      },
    );
  }
}

List<BottomNavigationBarItem> bottomNavigationBarItems = const [
  BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
  BottomNavigationBarItem(icon: Icon(Icons.grid_3x3_outlined)),
  BottomNavigationBarItem(icon: Icon(Icons.person_outline)),
  BottomNavigationBarItem(icon: Icon(Icons.settings_outlined)),
];
