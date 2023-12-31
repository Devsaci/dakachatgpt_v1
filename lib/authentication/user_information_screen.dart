import 'package:dakachatgpt_v1/service/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  final RoundedLoadingButtonController btnController =
      RoundedLoadingButtonController();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 35),
              child: Column(
                children: [
                  // Stack : CircleAvatar & Positioned IconButton
                  Center(
                    child: Stack(
                      children: [
                        // CircleAvatar
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.deepPurple,
                          backgroundImage: AssetImage(AssetsManager.userIcon),
                        ),
                        // CircleAvatar
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              border: Border.all(
                                  width: 2, color: Colors.yellowAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(35)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.camera_alt,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // textFormFields
                  Container(
                    child: Column(
                      children: [
                        // textFormFields 'Enter your name'
                        myTextFormField(
                          enabled: true,
                          textEditingController: nameController,
                          hintText: 'Enter your name',
                          textInputType: TextInputType.name,
                          icon: Icons.account_circle,
                        ),
                        const SizedBox(height: 20),
                        // textFormFields 'Enter your phone number'
                        myTextFormField(
                          enabled: true,
                          textEditingController: phoneController,
                          hintText: 'Enter your phone number',
                          textInputType: TextInputType.phone,
                          icon: Icons.phone,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 30),
                  // RoundedLoadingButton 'Continue'
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RoundedLoadingButton(
                      controller: btnController,
                      successIcon: Icons.check,
                      successColor: Colors.green,
                      errorColor: Colors.red,
                      color: Colors.deepPurple,
                      onPressed: () {},
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField myTextFormField({
    required bool enabled,
    required IconData icon,
    required TextEditingController textEditingController,
    required String hintText,
    required TextInputType textInputType,
  }) {
    return TextFormField(
      enabled: enabled,
      controller: textEditingController,
      decoration: InputDecoration(
        prefixIcon: Icon(icon,size: 30,color: Colors.black,),
        hintText: hintText,
      ),
    );
  }
}
