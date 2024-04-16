import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AccountsWidget extends StatelessWidget {
  const AccountsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 2300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFced4da),
                  blurRadius: 30,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/facebook icon.png',
              width: 40,
              height: 40,
            ),
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFced4da),
                  blurRadius: 30,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/icons8-google-360.png',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
