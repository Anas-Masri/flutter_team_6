import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';
import 'package:task_7/core/widgets/position_container_text_widget.dart';

class StackItemWidget extends StatelessWidget {
  const StackItemWidget({
    super.key,
    required this.isNotSelected,
  });
  final bool isNotSelected;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 255.w,
          height: 330.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset(
              'assets/images/BG image.jfif',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 255.w,
          height: 330.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter)),
        ),
        PositionContainerTextWidget(
          radius: 18,
          color: AppColors.orangeContainerColor,
          left: 14.5,
          text: 'Free e-book',
          top: 22,
        ),
        Positioned(
          top: 170.h,
          left: 15.w,
          child: SizedBox(
            width: 200.w,
            child: Text(
              'Step design sprint for beginner',
              style: TextStyle(
                  fontFamily: AppFonts.poppins,
                  color: AppColors.whiteTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Positioned(
          top: 222.h,
          left: 15.5.w,
          child: SvgPicture.asset(AppSvgIcon.timeIcon),
        ),
        Positioned(
          top: 222.h,
          left: 37.w,
          child: Text(
            '5h 21m',
            style: TextStyle(
                fontFamily: AppFonts.poppins,
                color: const Color(0xff8C8C8C),
                fontSize: 9.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
        PositionContainerTextWidget(
          radius: 3.6,
          color: AppColors.cyanContainerColor,
          left: 15.5.w,
          top: 250.h,
          text: '6 lessons',
        ),
        PositionContainerTextWidget(
          radius: 3.6,
          color: AppColors.blueContainerColor,
          left: 76.w,
          top: 250.h,
          text: 'UI/UX',
        ),
        PositionContainerTextWidget(
          radius: 3.6,
          color: AppColors.purpleContainerColor,
          left: 118.w,
          top: 250.h,
          text: 'free',
        ),
        Positioned(
            bottom: 18.5,
            child: SizedBox(
              width: 200.w,
              height: 50.h,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_image.jfif'),
                ),
                title: Text(
                  'Laurel Seilha',
                  style: TextStyle(
                      color: AppColors.whiteTextColor,
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp),
                ),
                subtitle: Text(
                  'Product Designer',
                  style: TextStyle(
                      color: AppColors.subtitleTextColor,
                      fontFamily: AppFonts.poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 9.sp),
                ),
              ),
            )),
        isNotSelected
            ? Container(
                width: 255.w,
                height: 330.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.85),
                      Colors.white.withOpacity(0.85),
                    ], begin: Alignment.bottomLeft, end: Alignment.topCenter)),
              )
            : const SizedBox(),
      ],
    );
  }
}
