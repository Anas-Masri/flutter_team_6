import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.fullName,
    required this.hintText,
    this.isPassword = false,
  });

  final TextEditingController fullName;
  final String hintText;
  final bool isPassword;
  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

bool isVisible = false;

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisible,
      controller: widget.fullName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? InkWell(
                onTap: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                child: Icon(
                  isVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: const Color(0xff9D9FA0),
                ),
              )
            : const SizedBox(),
        hintStyle: const TextStyle(color: Color(0xff9D9FA0)),
        hintText: widget.hintText,
        filled: true,
        fillColor: const Color(0xffF6F7FA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
