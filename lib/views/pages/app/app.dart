import 'package:bloc_architecture/views/pages/app/widgets/check_state_widget.dart';
import 'package:bloc_architecture/views/pages/app/widgets/multi_providers_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/themes/dark_theme.dart';
import '../../shared/themes/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key,required this.token});

  final String? token;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: myAppProviders,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          home: CheckState(token: token),
        ),
    );
  }
}