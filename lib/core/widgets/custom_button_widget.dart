import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 310,
        height: 51,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.5),
            color: AppColors.praimeryButtonColor),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
