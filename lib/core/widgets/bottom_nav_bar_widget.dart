import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';
import 'package:task_7/core/widgets/bottom_navigation_bar_icon.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key, required this.controller});
  final PageController controller;
  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

int selectedIndex = 0;

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          widget.controller.animateToPage(value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn);
          print(selectedIndex);
          setState(() {});
        },
        selectedFontSize: 0,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        elevation: 4,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 0
                  ? BottomNavigationBarIcon(
                      dashColor: AppColors.praimeryButtonColor,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.praimeryButtonColor,
                      svgIcon: AppSvgIcon.activeHome)
                  : BottomNavigationBarIcon(
                      dashColor: Colors.transparent,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.disactiveButtonColor,
                      svgIcon: AppSvgIcon.home)),
          BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 1
                  ? BottomNavigationBarIcon(
                      dashColor: AppColors.praimeryButtonColor,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.praimeryButtonColor,
                      svgIcon: AppSvgIcon.map)
                  : BottomNavigationBarIcon(
                      dashColor: Colors.transparent,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.disactiveButtonColor,
                      svgIcon: AppSvgIcon.map)),
          BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 2
                  ? Column(
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.email,
                              color: AppColors.praimeryButtonColor,
                            ),
                            Positioned(
                                bottom: 14,
                                left: 14,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.8,
                                          color: AppColors.iconBorderColor),
                                      color: AppColors.praimeryButtonColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontFamily: AppFonts.poppins,
                                      color: Colors.white,
                                      fontSize: 9,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Container(
                          width: 11.w,
                          height: 3.5.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.praimeryButtonColor),
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.email,
                              color: AppColors.disactiveButtonColor,
                            ),
                            Positioned(
                                bottom: 13,
                                left: 13,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 15.r,
                                  height: 15.r,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.8,
                                          color: AppColors.iconBorderColor),
                                      color: AppColors.praimeryButtonColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontFamily: AppFonts.poppins,
                                      color: Colors.white,
                                      fontSize: 9.sp,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    )),
          BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 3
                  ? BottomNavigationBarIcon(
                      dashColor: AppColors.praimeryButtonColor,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.praimeryButtonColor,
                      svgIcon: AppSvgIcon.profile)
                  : BottomNavigationBarIcon(
                      dashColor: Colors.transparent,
                      mainColor: AppColors.disactiveButtonColor,
                      targetColor: AppColors.disactiveButtonColor,
                      svgIcon: AppSvgIcon.profile)),
        ]);
  }
}
