import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../service/assets_manager.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
                  const SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(90)),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(AssetsManager.openAILogo),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Verification',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Enter the OPT code sent to your phone number',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Pinput(
                    length: 6,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow.shade200,
                        border: Border.all(color: Colors.deepPurple),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    onCompleted: (value) {},
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Didn\'t receive any code?',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
