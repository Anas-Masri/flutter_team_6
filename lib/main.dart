import 'package:flutter/material.dart';
import 'package:task_7/views/log_in_page.dart';
import 'package:task_7/views/onboarding_page.dart';
import 'package:task_7/views/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingPage(),
    );
  }
}
