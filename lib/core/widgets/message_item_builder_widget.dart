import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';

class MessageItemBuilderWidget extends StatelessWidget {
  const MessageItemBuilderWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.subTitle,
      required this.isOnline,
      this.numberOfMasseges = 0,
      required this.isNotRead,
      required this.time});
  final String title;
  final String image;
  final String subTitle;
  final String time;
  final bool isOnline;
  final int numberOfMasseges;
  final bool isNotRead;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontFamily: AppFonts.poppins,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.4.sp),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.h,
                        alignment: Alignment.topLeft,
                        width: 215.w,
                        child: Text(
                          subTitle,
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: AppFonts.poppins,
                            fontSize: 12.6.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff8C8C8C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              leading: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 35.r,
                    width: 35.r,
                    decoration: BoxDecoration(
                        color: AppColors.greyButtonColor,
                        borderRadius: BorderRadius.circular(7)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image),
                    ),
                  ),
                  isOnline
                      ? Positioned(
                          top: 30,
                          left: 30,
                          child: Container(
                            width: 9.w,
                            height: 9.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.34.w,
                                    color: AppColors.iconBorderColor,
                                    strokeAlign: BorderSide.strokeAlignOutside),
                                borderRadius: BorderRadius.circular(9),
                                color: AppColors.onlineColor),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            Positioned(
                top: 0,
                right: 16,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                          color: AppColors.grayTextColor,
                          fontFamily: AppFonts.poppins,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.disactiveButtonColor,
                      size: 21.r,
                    )
                  ],
                )),
            Positioned(
              bottom: 14,
              right: 21,
              child: isNotRead
                  ? Container(
                      alignment: Alignment.center,
                      height: 21.5.h,
                      width: 21.5.w,
                      decoration: BoxDecoration(
                          color: AppColors.blueContainerColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        '$numberOfMasseges',
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
        Divider(
          color: AppColors.disactiveIndicatorColor,
          endIndent: 20.w,
          indent: 67.w,
        )
      ],
    );
  }
}
