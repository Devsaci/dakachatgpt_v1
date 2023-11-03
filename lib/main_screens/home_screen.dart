import 'package:dakachatgpt_v1/providers/my_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeStatus = Provider.of<MyThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat-GPT",
          style: TextStyle(
              color: themeStatus.themeType ? Colors.white : Colors.black),
        ),
      ),
      body: const Center(child: Text("Home Screen")),
    );
  }
}
