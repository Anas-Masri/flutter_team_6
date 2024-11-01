import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';
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

              const SizedBox(height: 13),

              // Email TextField
              CustomTextFormFieldWidget(
                controller: emailTextEditingController,
                hintText: 'Email',
              ),

              const SizedBox(height: 13),

              // Password TextField
              CustomTextFormFieldWidget(
                isPassword: true,
                controller: passwordTextEditingController,
                hintText: 'Password',
              ),

              const SizedBox(height: 20),

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
              const SizedBox(height: 27),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Color(0xff0082CD),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.5),
              ),

              const SizedBox(height: 39),

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

              const SizedBox(height: 120),

              // Log in link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account?',
                    style: TextStyle(
                        color: Color(0xff9D9FA0),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.5),
                  ),
                  InkWell(
                    child: const Text(
                      ' Sign Up',
                      style: TextStyle(
                          color: Color(0xff0082CD),
                          fontWeight: FontWeight.w500,
                          fontSize: 14.5),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
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
