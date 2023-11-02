import 'package:dakachatgpt_v1/main_screens/home_screen.dart';
import 'package:dakachatgpt_v1/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = true;
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.themeData(isDarkTheme : isDarkTheme, context: context),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      
      home: const HomeScreen(),
    );
  }
}
