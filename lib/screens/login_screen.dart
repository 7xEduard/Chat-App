import 'package:animate_do/animate_do.dart';
import 'package:chat_app/components/accounts_widget.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text_field.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            FadeInUp(
              duration: const Duration(milliseconds: 1000),
              child: Center(
                child: Image.asset(
                  'assets/images/chat_icon_bubbel.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            const SizedBox(height: 20),
            FadeInUp(
              duration: const Duration(milliseconds: 1300),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "login",
                  style: TextStyle(
                    fontFamily: 'Bubblegum',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            
            Expanded(
              child: FadeInUp(
                duration: const Duration(milliseconds: 2000),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Column(
                        children: [
                          FadeInUp(
                            duration: const Duration(milliseconds: 800),
                            child: const CustomTextField(
                              hintText: "Email or Phone number",
                            ),
                          ),
                          const SizedBox(height: 10),
                          FadeInUp(
                            duration: const Duration(milliseconds: 1100),
                            child: const CustomTextField(
                              hintText: "Password",
                            ),
                          ),
                          const SizedBox(height: 20),
                          FadeInUp(
                            duration: const Duration(milliseconds: 1400),
                            child: const Padding(
                              padding: EdgeInsets.only(right: 200),
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(color: Color(0xFF1789fc)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          FadeInUp(
                            duration: const Duration(milliseconds: 1700),
                            child: CustomButton(
                              onPressed: () {},
                              labelText: "Login",
                            ),
                          ),
                          const SizedBox(height: 50),
                          FadeInUp(
                            duration: const Duration(milliseconds: 2000),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Color(0xFFced4da),
                                  ),
                                ),
                                Text(
                                  "  OR  ",
                                  style: TextStyle(
                                    color: Color(0xFF6c757d),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Color(0xFFced4da),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const AccountsWidget(),
                          const SizedBox(height: 50),
                          FadeInUp(
                            duration: const Duration(milliseconds: 2600),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account? ",
                                  style: TextStyle(
                                    color: Color(0xFF6c757d),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, 'SignUpScreen');
                                  },
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                      color: Color(0xFF1789fc),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
