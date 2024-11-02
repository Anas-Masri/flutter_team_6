import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/widgets/custom_button_widget.dart';
import 'package:task_7/core/widgets/custom_text_form_field_widget.dart';
import 'package:task_7/views/home_page_view.dart';
import 'package:task_7/views/sign_up_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 71).r,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/focal.png',
                width: 50.w,
                height: 60.h,
              ), // Logo
              // Replace with your logo

              SizedBox(height: 25.h),

              // Email TextField
              CustomTextFormFieldWidget(
                controller: emailTextEditingController,
                hintText: 'Email',
              ),

              SizedBox(height: 13.h),

              // Password TextField
              CustomTextFormFieldWidget(
                isPassword: true,
                controller: passwordTextEditingController,
                hintText: 'Password',
              ),

              SizedBox(height: 20.h),

              // Sign Up Button
              CustomButtonWidget(
                hasShadow: true,
                text: 'Log in',
                color: AppColors.praimeryButtonColor,
                textColor: Colors.white,
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePageView(),
                      ));
                },
              ),
              SizedBox(height: 27.h),
              Text(
                'Forgot Password?',
                style: TextStyle(
                    color: AppColors.blueTextColor,
                    fontFamily: AppFonts.poppins,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.5.sp),
              ),

              SizedBox(height: 39.h),

              // OR divider
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'or',
                      style: TextStyle(
                          fontSize: 14.5.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.poppins),
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),

              SizedBox(height: 13.h),

              // Facebook Login Button
              CustomButtonWidget(
                hasIcon: true,
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                text: 'Log in with Facebook',
                textColor: Colors.white,
                color: AppColors.blueTextColor,
              ),
              SizedBox(height: 13.h),

              // Google Login Button
              CustomButtonWidget(
                hasBorder: true,
                hasIcon: true,
                icon: Image.asset(
                  'assets/images/google.png',
                ),
                text: 'Log in with Google',
                textColor: AppColors.blackTextColor,
                color: AppColors.greyButtonColor,
              ),

              // Terms of Service and Privacy Policy

              SizedBox(height: 117.h),

              // Log in link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                        color: AppColors.subtitleTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.5.sp),
                  ),
                  InkWell(
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                          color: AppColors.blueTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.5.sp),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
