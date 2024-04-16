import 'package:animate_do/animate_do.dart';
import 'package:chat_app/components/accounts_widget.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text_field.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'assets/images/chat icon 2.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            const SizedBox(height: 10),
            FadeInUp(
              duration: const Duration(milliseconds: 1300),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "sign up",
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
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30,10,30,0),
                    child: ListView(
                      children: [
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
                        const SizedBox(height: 10),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1400),
                          child: CustomTextField(
                            hintText: "Confirm Password",
                          ),
                        ),
                        const SizedBox(height: 30),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1700),
                          child: CustomButton(
                            labelText: "sign up",
                          ),
                        ),
                        const SizedBox(height: 50),
                        FadeInUp(
                          duration: const Duration(milliseconds: 2000),
                          child: const Center(
                            child: Text(
                              "- OR -",
                              style: TextStyle(
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        FadeInUp(
                          duration: const Duration(milliseconds: 2300),
                          child: const Center(
                            child: Text(
                              "Sign-up with",
                              style: TextStyle(
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const AccountsWidget(),
                      ],
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
