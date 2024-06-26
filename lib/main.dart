import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/sign_up_screen.dart';
import 'package:chat_app/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Color(0xFF64b5f6), 
          selectionHandleColor: Colors.yellow,
        ),
      ),
      routes: {
        'SignUpScreen': (context) =>  SignUpScreen(),
        'Splash': (context) => const Splash(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'Splash',
    );
  }
}
