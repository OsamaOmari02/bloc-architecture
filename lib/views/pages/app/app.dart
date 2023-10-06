import 'package:bloc_architecture/core/strings/other_messages.dart';
import 'package:bloc_architecture/views/pages/app/widgets/check_state_widget.dart';
import 'package:bloc_architecture/views/pages/app/widgets/multi_providers_list.dart';
import 'package:bloc_architecture/views/pages/app/widgets/root_app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        builder: (BuildContext context, Widget? child) =>
            RootAppWidget(isDark: false, child: child),
          home: CheckState(token: token),
        ),
    );
  }
}
