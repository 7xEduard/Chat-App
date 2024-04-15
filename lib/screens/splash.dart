import 'dart:async';

import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(const LoginScreen());
    });
    return Scaffold(
      backgroundColor: const Color(0xFF05001E),
      body: Center(
        child: Image.asset(
            'assets/images/2.png'),
      ),
    );
  }
}
