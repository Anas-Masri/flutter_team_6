import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';

class PositionContainerTextWidget extends StatelessWidget {
  const PositionContainerTextWidget({
    super.key,
    this.top = 0,
    this.left = 0,
    required this.color,
    required this.text,
    required this.radius,
    this.insideStack = true,
  });
  final double top;
  final bool insideStack;
  final double left;
  final double radius;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return insideStack
        ? Positioned(
            top: top,
            left: left,
            child: Container(
              alignment: Alignment.center,
              height: 17.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius), color: color),
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                text,
                style: TextStyle(
                    color: AppColors.whiteTextColor,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.poppins),
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            height: 17.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius), color: color),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              text,
              style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.poppins),
            ),
          );
  }
}
