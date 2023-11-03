import 'package:dakachatgpt_v1/main_screens/home_screen.dart';
import 'package:dakachatgpt_v1/providers/my_theme_provider.dart';
import 'package:dakachatgpt_v1/themes/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MyThemeProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeProvider>(
        builder: (BuildContext context, value, Widget? child) {
      return MaterialApp(
        title: 'Chat_GPT with Flutter',
        theme: MyTheme.themeData(isDarkTheme: false, context: context),
        home: const HomeScreen(),
      );
    });
  }
}
