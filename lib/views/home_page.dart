import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_constats.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';
import 'package:task_7/core/widgets/category_item_builder_widget.dart';
import 'package:task_7/core/widgets/stack_item_widget.dart';

import 'package:task_7/core/widgets/video_call_widget.dart';
import 'package:task_7/views/detail_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

PageController controller = PageController();
int imageSelectedIndex = 0;
int selectedIndex = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(children: [
          ListTile(
            trailing: Stack(
              children: [
                SvgPicture.asset(AppSvgIcon.notification),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 5.5.w,
                    height: 5.5.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.iconBorderColor,
                            width: 1.35.w,
                            strokeAlign: BorderSide.strokeAlignOutside),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.praimeryButtonColor),
                  ),
                )
              ],
            ),
            title: Text(
              'Hallo, Samuel!',
              style: TextStyle(
                  fontFamily: AppFonts.poppins,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: Row(
              children: [
                SvgPicture.asset(AppSvgIcon.award),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  '+1600',
                  style: TextStyle(
                      color: AppColors.greenTextColor,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  ' Points',
                  style: TextStyle(
                      color: AppColors.greenTextColor,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            leading: Stack(
              children: [
                Container(
                  height: 35.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      color: AppColors.greyButtonColor,
                      borderRadius: BorderRadius.circular(7)),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image5.jfif'),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    width: 9.w,
                    height: 9.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.34.w,
                            color: AppColors.iconBorderColor,
                            strokeAlign: BorderSide.strokeAlignOutside),
                        borderRadius: BorderRadius.circular(9),
                        color: AppColors.onlineColor),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          SizedBox(
            height: 80.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: VideoCallWidget(
                    image: imageList[index],
                  ),
                );
              },
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 15, top: 20),
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Text(
                    'Upcoming',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackTextColor),
                  ),
                  Text(
                    ' course of this week',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackTextColor),
                  ),
                ],
              )),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 37.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorylist.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    selectedIndex = index;
                    setState(() {});
                  },
                  child: CategoryItemBuilderWidget(
                    isSelected: selectedIndex == index,
                    categoryName: categorylist[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          SizedBox(
            width: 400.w,
            child: CarouselSlider.builder(
              carouselController: CarouselSliderController(),
              options: CarouselOptions(
                enlargeFactor: 0.3,
                disableCenter: true,
                onPageChanged: (index, reason) {
                  imageSelectedIndex = index;
                  setState(() {});
                },
                viewportFraction: 0.67.w,
                enableInfiniteScroll: false,
                padEnds: false,
                height: 330.h,
                enlargeCenterPage: true,
              ),
              itemCount: 5,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                          padding: const EdgeInsets.only(left: 15.5).r,
                          alignment: Alignment.bottomLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailPage(),
                                  ));
                            },
                            child: StackItemWidget(
                              isNotSelected: imageSelectedIndex != itemIndex,
                            ),
                          )),
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          SmoothPageIndicator(
            controller: PageController(initialPage: imageSelectedIndex),
            count: 5,
            effect: ExpandingDotsEffect(
                dotHeight: 5,
                radius: 7,
                dotColor: AppColors.disactiveIndicatorColor,
                activeDotColor: AppColors.praimeryButtonColor,
                dotWidth: 13.5,
                expansionFactor: 1.1),
          ),
        ]),
      ),
    );
  }
}
