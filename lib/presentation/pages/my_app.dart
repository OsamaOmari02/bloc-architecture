import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/themes/dark_theme.dart';
import '../shared/themes/light_theme.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}
