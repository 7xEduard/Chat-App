import 'package:animate_do/animate_do.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF05001E),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInUp(
                    duration: const Duration(milliseconds: 1000),
                    child: Center(
                      child: Image.asset(
                        'assets/images/chat icon 2.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1300),
                    child: const Text(
                      "login",
                      style: TextStyle(
                        fontFamily: 'Bubblegum',
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      FadeInUp(
                        duration: const Duration(milliseconds: 800),
                        child: CustomTextField(
                          hintText: "Email or Phone number",
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1100),
                        child: CustomTextField(
                          hintText: "Password",
                        ),
                      ),
                      const SizedBox(height: 40),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Color(0xFF05001E)),
                        ),
                      ),
                      const SizedBox(height: 40),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1700),
                        child: CustomButton(
                          labelText: "Login",
                        ),
                      ),
                      const SizedBox(height: 50),
                      FadeInUp(
                        duration: const Duration(milliseconds: 2000),
                        child: const Text(
                          "Continue with social media",
                          style: TextStyle(
                            color: Color(0xFF05001E),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: FadeInUp(
                      //         duration: const Duration(milliseconds: 1800),
                      //         child: MaterialButton(
                      //           onPressed: () {},
                      //           height: 50,
                      //           color: Colors.blue,
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(50),
                      //           ),
                      //           child: const Center(
                      //             child: Text(
                      //               "Facebook",
                      //               style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontWeight: FontWeight.bold,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 30,
                      //     ),
                      //     Expanded(
                      //       child: FadeInUp(
                      //         duration: const Duration(
                      //           milliseconds: 1900,
                      //         ),
                      //         child: MaterialButton(
                      //           onPressed: () {},
                      //           height: 50,
                      //           shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(50),
                      //           ),
                      //           color: Colors.black,
                      //           child: const Center(
                      //             child: Text(
                      //               "Github",
                      //               style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontWeight: FontWeight.bold,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
