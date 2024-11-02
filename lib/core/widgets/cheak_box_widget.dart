import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';

class CheakBoxWidget extends StatefulWidget {
  const CheakBoxWidget({
    super.key,
  });

  @override
  State<CheakBoxWidget> createState() => _CheakBoxWidgetState();
}

bool isSelected = false;

class _CheakBoxWidgetState extends State<CheakBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        width: 18.r,
        height: 18.r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.subtitleTextColor.withOpacity(0.4)),
        child: isSelected
            ? SvgPicture.asset(AppSvgIcon.cheakIcon)
            : const SizedBox(),
      ),
    );
  }
}
