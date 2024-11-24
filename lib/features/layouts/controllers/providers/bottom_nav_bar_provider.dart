import 'package:flutter/cupertino.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int index = 0;

  final List<Widget> navBarPages = [
    // const HomePage(),
    // const MarketCornerPage(),
    // const CreateReelPage(),
    // const ReelsPage(),
    // const MenuPage(),
  ];

  void onItemSelected(int value) {
    index = value;
    notifyListeners();
  }
}
