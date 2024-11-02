import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/widgets/cheak_box_widget.dart';
import 'package:task_7/core/widgets/custom_button_widget.dart';
import 'package:task_7/core/widgets/custom_text_form_field_widget.dart';
import 'package:task_7/core/widgets/time_avilable_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 585.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.5),
        color: Colors.white,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 21, right: 15, left: 15, bottom: 21),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available time',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: AppFonts.poppins,
                      ),
                    ),
                    Text(
                      'Adjust to your schedule',
                      style: TextStyle(
                        color: AppColors.subtitleTextColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.44.sp,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: 40.r,
                  height: 40.r,
                  padding: const EdgeInsets.only(left: 3, top: 5),
                  decoration: BoxDecoration(
                    color: AppColors.subtitleTextColor,
                    borderRadius: BorderRadius.circular(7.22),
                  ),
                  child: SvgPicture.asset(
                    alignment: Alignment.center,
                    'assets/svgs/calendar.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 28,
                    childAspectRatio: 2),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  List<String> time = [
                    '14:45 Pm',
                    '09:25 Am',
                    '09:45 AM',
                    '08:55 PM',
                    '07:45 PM',
                    '14:40 AM',
                    '10:45 AM',
                    '08:40 PM',
                    '07:35 AM',
                  ];
                  List<bool> available = [
                    false,
                    false,
                    true,
                    true,
                    true,
                    false,
                    false,
                    true,
                    true,
                  ];
                  return TimeAvilableWidget(
                    isAvailable: available[index],
                    time: time[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.63.sp,
                      fontFamily: AppFonts.poppins,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomTextFormFieldWidget(
                    controller: TextEditingController(),
                    hintText: 'samuel_herickson@gmail.com',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.6.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Telp number',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.63.sp,
                      fontFamily: AppFonts.poppins,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomTextFormFieldWidget(
                    controller: TextEditingController(),
                    hintText: '(001) 34 4567890',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Schedule date & time',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.63.sp,
                  fontFamily: AppFonts.poppins,
                ),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Row(
              children: [
                const CheakBoxWidget(),
                SizedBox(
                  width: 9.w,
                ),
                Text(
                  '12 October, 2020 at 09.45 AM',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.63.sp,
                    color: AppColors.subtitleTextColor,
                    fontFamily: AppFonts.poppins,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            CustomButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'Apply',
              textColor: AppColors.whiteTextColor,
              color: AppColors.praimeryButtonColor,
            )
          ],
        ),
      ),
    );
  }
}
