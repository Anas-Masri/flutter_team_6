import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:task_7/views/home_page_view.dart';
import 'package:task_7/views/onboarding_page.dart';
=======

import 'package:task_7/views/my_message_screen.dart';
import 'package:task_7/views/onboarding_screen.dart';
>>>>>>> 1de2e06f787bfa24bb532ada692160a4dedfacdd

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
