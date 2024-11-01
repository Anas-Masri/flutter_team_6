import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/widgets/custom_button_widget.dart';
import 'package:task_7/core/widgets/custom_text_form_field_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 71),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/focal.png',
                width: 50,
                height: 60,
              ), // Logo
              // Replace with your logo

              const SizedBox(height: 25),

              // Fullname TextField
              CustomTextFormFieldWidget(
                fullName: fullNameTextEditingController,
                hintText: 'Fullname',
              ),

              const SizedBox(height: 13),

              // Email TextField
              CustomTextFormFieldWidget(
                fullName: emailTextEditingController,
                hintText: 'Email',
              ),

              const SizedBox(height: 13),

              // Password TextField
              CustomTextFormFieldWidget(
                isPassword: true,
                fullName: passwordTextEditingController,
                hintText: 'Password',
              ),

              const SizedBox(height: 20),

              // Sign Up Button
              CustomButtonWidget(
                hasShadow: true,
                text: 'Sign Up',
                color: AppColors.praimeryButtonColor,
                textColor: Colors.white,
                onTap: () {},
              ),
              const SizedBox(height: 27),

              // OR divider
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'or',
                      style: TextStyle(
                          fontSize: 14.5,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 13),

              // Facebook Login Button
              const CustomButtonWidget(
                hasIcon: true,
                icon: Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                text: 'Log in with Facebook',
                textColor: Colors.white,
                color: Color(0xff0082CD),
              ),
              const SizedBox(height: 13),

              // Google Login Button
              CustomButtonWidget(
                hasIcon: true,
                icon: Image.asset(
                  'assets/images/google.png',
                ),
                text: 'Log in with Google',
                textColor: const Color(0xff303030),
                color: const Color(0xffF6F7FA),
              ),

              const SizedBox(height: 20),

              // Terms of Service and Privacy Policy
              const Text.rich(
                TextSpan(
                  text: 'By signing up you accept the ',
                  style: TextStyle(color: Color(0xff9D9FA0), fontSize: 12.6),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style:
                          TextStyle(color: Color(0xff0082CD), fontSize: 12.6),
                    ),
                    TextSpan(
                      text: '\n and ',
                      style:
                          TextStyle(color: Color(0xff9D9FA0), fontSize: 12.6),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style:
                          TextStyle(color: Color(0xff0082CD), fontSize: 12.6),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 38),

              // Log in link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Color(0xff9D9FA0),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.5),
                  ),
                  InkWell(
                    child: const Text(
                      ' Log in',
                      style: TextStyle(
                          color: Color(0xff0082CD),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.5),
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
    );
  }
}
