import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.labelText});
  String? labelText;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: 50,
      color: const Color(0xFF05001E),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
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
