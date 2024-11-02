import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/widgets/custom_button_widget.dart';
import 'package:task_7/core/widgets/custom_text_form_field_widget.dart';
import 'package:task_7/views/home_page_view.dart';
import 'package:task_7/views/log_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailTextEditingController = TextEditingController();
  final fullNameTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 71).r,
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
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

                // Fullname TextField
                CustomTextFormFieldWidget(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fullname is a required Field';
                    } else {
                      return null;
                    }
                  },
                  controller: fullNameTextEditingController,
                  hintText: 'Fullname',
                ),

                SizedBox(height: 13.h),

                // Email TextField
                CustomTextFormFieldWidget(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is a required Field';
                    } else {
                      return null;
                    }
                  },
                  controller: emailTextEditingController,
                  hintText: 'Email',
                ),

                SizedBox(height: 13.h),

                // Password TextField
                CustomTextFormFieldWidget(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is a required Field';
                    } else {
                      return null;
                    }
                  },
                  isPassword: true,
                  controller: passwordTextEditingController,
                  hintText: 'Password',
                ),

                SizedBox(height: 20.h),

                // Sign Up Button
                CustomButtonWidget(
                  hasShadow: true,
                  text: 'Sign Up',
                  color: AppColors.praimeryButtonColor,
                  textColor: Colors.white,
                  onTap: () {
                    if (globalKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePageView(),
                          ));
                    }
                  },
                ),
                SizedBox(height: 27.h),

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
                  icon: Icon(
                    Icons.facebook,
                    color: AppColors.whiteTextColor,
                  ),
                  text: 'Log in with Facebook',
                  textColor: AppColors.whiteTextColor,
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
                  textColor: AppColors.subtitleTextColor,
                  color: AppColors.greyButtonColor,
                ),

                SizedBox(height: 20.h),

                // Terms of Service and Privacy Policy
                Text.rich(
                  TextSpan(
                    text: 'By signing up you accept the ',
                    style: TextStyle(
                        color: AppColors.subtitleTextColor, fontSize: 12.6.sp),
                    children: [
                      TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(
                            color: AppColors.blueTextColor, fontSize: 12.6.sp),
                      ),
                      TextSpan(
                        text: '\n and ',
                        style: TextStyle(
                            color: AppColors.subtitleTextColor,
                            fontSize: 12.6.sp),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            color: AppColors.blueTextColor, fontSize: 12.6.sp),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 38.h),

                // Log in link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: AppColors.subtitleTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.5.sp),
                    ),
                    InkWell(
                      child: Text(
                        ' Log in',
                        style: TextStyle(
                            color: AppColors.blueTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.5.sp),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInPage()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
