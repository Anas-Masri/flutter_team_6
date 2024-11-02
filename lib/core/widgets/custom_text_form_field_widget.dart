import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
  });

  final TextEditingController controller;
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
      controller: widget.controller,
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
                  color: AppColors.subtitleTextColor,
                ),
              )
            : const SizedBox(),
        hintStyle: TextStyle(color: AppColors.subtitleTextColor),
        hintText: widget.hintText,
        filled: true,
        fillColor: AppColors.textFormFieldBackgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
