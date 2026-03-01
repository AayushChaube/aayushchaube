import 'package:aayushchaube/constants/string_constants.dart';
import 'package:aayushchaube/themes/custom_themes.dart';
import 'package:aayushchaube/view/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConstants.title,
      theme: CustomThemes.lightTheme,
      darkTheme: CustomThemes.darkTheme,
      themeMode: ThemeMode.system, // Follows system theme
      home: HomePage(),
    );
  }
}
