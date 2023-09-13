import 'package:bloc_architecture/core/strings/other_messages.dart';
import 'package:bloc_architecture/views/pages/app/widgets/check_state_widget.dart';
import 'package:bloc_architecture/views/pages/app/widgets/multi_providers_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upgrader/upgrader.dart';

import '../../shared/themes/dark_theme.dart';
import '../../shared/themes/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key, required this.token});

  final String? token;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: myAppProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: APP_TITLE,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: UpgradeAlert(
            // check for app updates
            upgrader: Upgrader(
              showIgnore: false,
              showLater: false,
            ),
            child: CheckState(token: token)),
      ),
    );
  }
}
