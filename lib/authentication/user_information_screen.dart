import 'package:dakachatgpt_v1/service/assets_manager.dart';
import 'package:flutter/material.dart';

class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 35),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.deepPurple,
                    backgroundImage: AssetImage(AssetsManager.userIcon),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      )),
    );
  }
}
