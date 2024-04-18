import 'package:animate_do/animate_do.dart';
import 'package:chat_app/components/accounts_widget.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text_field.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key, this.email, this.password});
  String? email;
  String? password;

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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: Container(
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ListView(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              children: [
                                FadeInUp(
                                  duration: const Duration(milliseconds: 800),
                                  child: CustomTextField(
                                    onChanged: (data) {
                                      email = data;
                                    },
                                    hintText: "Email or Phone number",
                                  ),
                                ),
                                const SizedBox(height: 10),
                                FadeInUp(
                                  duration: const Duration(milliseconds: 1100),
                                  child: CustomTextField(
                                    onChanged: (data) {
                                      password = data;
                                    },
                                    hintText: "Password",
                                  ),
                                ),
                                const SizedBox(height: 10),
                                FadeInUp(
                                  duration: const Duration(milliseconds: 1400),
                                  child: const CustomTextField(
                                    hintText: "Confirm Password",
                                  ),
                                ),
                                const SizedBox(height: 30),
                                FadeInUp(
                                  duration: const Duration(milliseconds: 1700),
                                  child: CustomButton(
                                    labelText: "sign up",
                                    onPressed: () async {
                                      try {
                                        UserCredential user = await FirebaseAuth
                                            .instance
                                            .createUserWithEmailAndPassword(
                                          email: email!,
                                          password: password!,
                                        );
                                      } on FirebaseAuthException catch (e) {
                                        if (e.code == 'weak-password') {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'The password provided is too weak.'),
                                            ),
                                          );
                                        } else if (e.code ==
                                            'email-already-in-use') {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'The account already exists for that email.'),
                                            ),
                                          );
                                        }
                                      }
                                    },
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
                                FadeInUp(
                                  duration: const Duration(milliseconds: 2300),
                                  child: const Center(
                                    child: Text(
                                      "Sign-up with",
                                      style: TextStyle(
                                        color: Color(0xFF6c757d),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                FadeInUp(
                                  duration: const Duration(milliseconds: 2600),
                                  child: const AccountsWidget(),
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
            ),
          ],
        ),
      ),
    );
  }
}
