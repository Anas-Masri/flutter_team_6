import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      this.onTap,
      required this.text,
      required this.textColor,
      required this.color,
      this.hasShadow = false,
      this.icon = const SizedBox(),
      this.hasIcon = false,
      this.hasBorder = false});
  final void Function()? onTap;
  final String text;
  final Color textColor;
  final Color color;
  final Widget icon;
  final bool hasShadow;
  final bool hasIcon;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 310.w,
        height: 51.5.h,
        decoration: BoxDecoration(
            border: hasBorder
                ? Border.all(
                    width: 0.9, color: AppColors.disactiveIndicatorColor)
                : const Border(),
            boxShadow: [
              hasShadow
                  ? BoxShadow(
                      blurRadius: 12.63,
                      offset: const Offset(0, 4.5),
                      color: const Color(0xEC5F5F40).withOpacity(0.25))
                  : const BoxShadow()
            ],
            borderRadius: BorderRadius.circular(7.5),
            color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon ? icon : const SizedBox(),
            hasIcon
                ? SizedBox(
                    width: 14.w,
                  )
                : const SizedBox(),
            Text(
              text,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.5.sp,
                  fontFamily: AppFonts.poppins),
            ),
          ],
        ),
      ),
    );
  }
}
