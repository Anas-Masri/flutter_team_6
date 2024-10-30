import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: 310,
        height: 51,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.5),
            color: AppColors.praimeryButtonColor),
        child: const Text(
          'Apply',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
