import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller1;
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller1,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Color(0xffc7c9d9),
        fontSize: 14.44,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins'
      ),
      controller: controller1,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Color(0xffeeeeee),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.41),
          borderSide: BorderSide.none,
        ),
      ),
    );

  }
}
