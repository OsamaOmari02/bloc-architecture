
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/bloc/initial_provider.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderName>(
      builder: (context, providerName, child) => const Scaffold(
        // drawer: DrawerWidget(),
        // appBar: AppBarWidget(),
        // body: bottomNavigationBarItems[controller index],
        // bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
