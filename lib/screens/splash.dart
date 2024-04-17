import 'dart:async';

import 'package:chat_app/constants.dart';
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
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset(
            'assets/images/chat_icon_bubbel.png',
            width: 150,
            height: 150,
            ),
      ),
    );
  }
}
