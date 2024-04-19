import 'package:animate_do/animate_do.dart';
import 'package:chat_app/components/accounts_widget.dart';
import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text_field.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email;

  String? password;

  String? confirmPassword;

  bool inAsyncCall = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
        color: Color(0xFFffd500),
      ),
      inAsyncCall: inAsyncCall,
      child: Scaffold(
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
                              child: Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 800),
                                      child: CustomTextField(
                                        validator: (data) {
                                          if (data!.isEmpty) {
                                            return 'Required';
                                          } else if (!data.isEmail &&
                                              !data.isPhoneNumber) {
                                            return 'Not Valid';
                                          }
                                        },
                                        onChanged: (data) {
                                          email = data;
                                        },
                                        hintText: "Email or Phone number",
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 1100),
                                      child: CustomTextField(
                                        validator: (data) {
                                          if (data!.isEmpty) {
                                            return 'Required';
                                          } else if (data.length < 12) {
                                            return 'Weak Password';
                                          } else if (!data
                                              .contains(RegExp(r'[A-Z]'))) {
                                            return 'password should contains letters';
                                          }
                                        },
                                        onChanged: (data) {
                                          password = data;
                                        },
                                        hintText: "Password",
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 1400),
                                      child: CustomTextField(
                                        validator: (data) {
                                          if (data!.isEmpty) {
                                            return 'Required';
                                          } else if (data != password) {
                                            return 'Wrong';
                                          }
                                        },
                                        onChanged: (data) {
                                          confirmPassword = data;
                                        },
                                        hintText: "Confirm Password",
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 1700),
                                      child: CustomButton(
                                        labelText: "sign up",
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            inAsyncCall = true;
                                            setState(() {});
                                            try {
                                              await userSignUp();
                                            } on FirebaseAuthException catch (e) {
                                              if (e.code == 'weak-password') {
                                                showMessage(context,
                                                    'The password provided is too weak.');
                                              } else if (e.code ==
                                                  'email-already-in-use') {
                                                showMessage(context,
                                                    'The account already exists for that email.');
                                              }
                                            }
                                            inAsyncCall = false;
                                            setState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 50),
                                    FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 2000),
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
                                      duration:
                                          const Duration(milliseconds: 2300),
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
                                      duration:
                                          const Duration(milliseconds: 2600),
                                      child: const AccountsWidget(),
                                    ),
                                  ],
                                ),
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
      ),
    );
  }

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> userSignUp() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
