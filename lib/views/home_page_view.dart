import 'package:flutter/material.dart';
import 'package:task_7/homepage.dart';
import 'package:task_7/views/my_message_page.dart';
import 'package:task_7/widgets/bottom_nav_bar_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarWidget(
        controller: controller,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          Homepage(),
          Homepage(),
          MyMessageScreen(),
          Homepage(),
        ],
      ),
    );
  }
}
