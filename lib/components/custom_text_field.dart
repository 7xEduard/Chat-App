import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.onChanged});
  final String? hintText;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFced4da),
            blurRadius: 30,
          )
        ],
      ),
      child: TextField(
        cursorColor: kPrimaryColor,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF6c757d)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
/*TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            width: 2,
            style: BorderStyle.solid,
            color: Color(0xFF05001E),
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: const Color(0xFFe9ecef),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFF495057)),
      ),
    )*/