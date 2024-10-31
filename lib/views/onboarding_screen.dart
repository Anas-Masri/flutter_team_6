import 'package:flutter/material.dart';
import 'package:task_7/constants/app_colors.dart';
import 'package:task_7/views/my_message_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.disactiveButtonColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 45, bottom: 0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/Group 83(1).png'),
              const SizedBox(height: 10),
              const Text(
                'community',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins2',
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 150),
              const Text(
                'Welcome to Our Community',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Best and popular apps for live education \ncourse from home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                 
                },
                child: Container(
                  width: 309,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.praimeryButtonColor,
                  ),
                  child: Center(
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.disactiveButtonColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
