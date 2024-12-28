import 'package:flutter/material.dart';
import 'package:my_apk/src/features/authentication/screens/login/login_screen.dart';
import 'package:my_apk/src/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: THealthTheme.lightMode,
        darkTheme: THealthTheme.darkMode,
        themeMode: ThemeMode.system,
        home: LoginScreen());
  }
}
