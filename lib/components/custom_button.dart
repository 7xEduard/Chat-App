import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.labelText, this.onPressed});
  final String? labelText;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "$labelText",
          style: const TextStyle(
            fontFamily: 'Bubblegum',
            color: Colors.white,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
