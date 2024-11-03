import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/widgets/svg_color_mapper.dart';

class BottomNavigationBarIcon extends StatelessWidget {
  const BottomNavigationBarIcon(
      {super.key,
      required this.mainColor,
      required this.targetColor,
      required this.svgIcon,
      required this.dashColor,
      this.hasNewMessage = false});
  final Color mainColor;
  final Color targetColor;
  final Color dashColor;
  final String svgIcon;
  final bool hasNewMessage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SvgPicture(SvgAssetLoader(svgIcon,
                colorMapper: SvgColorMapper(
                    fromColor: mainColor, toColor: targetColor))),
            hasNewMessage
                ? Positioned(
                    bottom: 5,
                    left: 5,
                    child: Container(
                      width: 14.r,
                      height: 14.r,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.8, color: AppColors.iconBorderColor),
                          color: AppColors.praimeryButtonColor,
                          borderRadius: BorderRadius.circular(50)),
                    ))
                : const SizedBox()
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 11.w,
          height: 3.5.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: dashColor),
        )
      ],
    );
  }
}
