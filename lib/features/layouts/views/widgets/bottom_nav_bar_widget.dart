import 'package:bloc_architecture/core/constants/app_colors_constants.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/widgets/images/svg_image_widget.dart';
import '../../controllers/providers/bottom_nav_bar_provider.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(height * 0.015)),
      ),
      child: Consumer<BottomNavBarProvider>(
        builder: (context, provider, child) => NavigationBar(
          height: height * 0.08,
          destinations: _destinations(context, provider.index),
          selectedIndex: provider.index,
          onDestinationSelected: (index) {
            context.read<BottomNavBarProvider>().onItemSelected(index);
          },
          elevation: 0,
          backgroundColor: AppColors.primary,
          indicatorColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        ),
      ),
    );
  }

  List<NavigationDestination> _destinations(BuildContext context, int index) {
    final double height = context.height;
    return [
      NavigationDestination(
        icon: SvgImageWidget(
          imagePath: index == 0 ? 'home_filled.svg' : 'home.svg',
          height: height * 0.033,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: SvgImageWidget(
          imagePath:
              index == 1 ? 'market_corner_filled.svg' : 'market_corner.svg',
          height: height * 0.027,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: Icon(
          index == 2 ? Icons.add_circle_outlined : Icons.add_circle_outline,
          size: height * 0.033,
          color: Colors.white,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: SvgImageWidget(
          imagePath: index == 3 ? 'reels_filled.svg' : 'reels.svg',
          height: height * 0.027,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: CircleAvatar(
          radius: height * 0.018,
          backgroundColor: index == 4 ? Colors.white : Colors.transparent,
          child: Icon(
            Icons.menu_outlined,
            size: height * 0.03,
            color: index == 4 ? AppColors.primary : Colors.white,
          ),
        ),
        label: '',
      ),
    ];
  }
}
