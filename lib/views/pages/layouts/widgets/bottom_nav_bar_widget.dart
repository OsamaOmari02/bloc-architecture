import 'package:bloc_architecture/views/shared/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../shared/utlis/media_query_util.dart';
import '../../home/home_page.dart';
import '../../settings/settings_page.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _navBarPages,
      backgroundColor: Colors.white,
      items: _bottomNavigationBarItems(context),
      confineInSafeArea: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(getHeight(context) * 0.02)),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style5,
    );
  }

  List<PersistentBottomNavBarItem> _bottomNavigationBarItems(
          BuildContext context) =>
      [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_outlined, size: getWidth(context) * 0.06),
          title: "Home",
          activeColorPrimary: lightFirstColor,
          inactiveColorPrimary: Colors.grey,
        ),
        // PersistentBottomNavBarItem(
        //   icon: const Icon(Icons.person_outline),
        //   title: "Profile",
        //   activeColorPrimary: lightFirstColor,
        //   inactiveColorPrimary: Colors.grey,
        // ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.settings_outlined),
          title: "Settings",
          activeColorPrimary: lightFirstColor,
          inactiveColorPrimary: Colors.grey,
        ),
      ];

  final List<Widget> _navBarPages = [
    const HomePage(),
    // const ProfilePage(),
    const SettingsPage(),
  ];
}
