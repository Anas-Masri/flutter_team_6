import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/views/log_in_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Group 83(1).png'),
            SizedBox(height: 10.h),
            Text(
              'community',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppFonts.poppinsLite,
                fontSize: 27.sp,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 150.h),
            Text(
              'Welcome to Our Community',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppFonts.poppins,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Best and popular apps for live education \ncourse from home',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppFonts.poppins,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 50.h),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInPage(),
                    ));
              },
              child: Container(
                width: 309.w,
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.praimeryButtonColor,
                ),
                child: Center(
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      fontFamily: AppFonts.poppins,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
