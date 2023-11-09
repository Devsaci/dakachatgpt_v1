
// import 'package:dakachatgpt_v1/authentication/registration_screen.dart';
import 'package:dakachatgpt_v1/providers/my_theme_provider.dart';
import 'package:dakachatgpt_v1/themes/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authentication/user_information_screen.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MyThemeProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  Future<void> getCurrentTheme() async {
    return await Provider.of<MyThemeProvider>(context, listen: false)
          .getThemeStatus();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeProvider>(
        builder: (BuildContext context, value, Widget? child) {
      return MaterialApp(
        title: 'Chat_GPT with Flutter',
        theme:
            // MyTheme.themeData(isDarkTheme: value.themeType, context: context),
        MyTheme.themeData(isDarkTheme: false, context: context),
        // home: const OTPScreen(),
        // home: const RegistrationScreen(),
        home: const UserInformationScreen(),
      );
    });
  }
}
