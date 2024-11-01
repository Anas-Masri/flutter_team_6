import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_constats.dart';
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(children: [
          ListTile(
            trailing: Stack(
              children: [
                SvgPicture.asset(AppSvgIcon.notification),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 5.5,
                    height: 5.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white,
                            width: 1.35,
                            strokeAlign: BorderSide.strokeAlignOutside),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.praimeryButtonColor),
                  ),
                )
              ],
            ),
            title: const Text('Hallo, Samuel!'),
            subtitle: Row(
              children: [
                SvgPicture.asset(AppSvgIcon.award),
                const SizedBox(
                  width: 2.5,
                ),
                Text(
                  '+1600',
                  style: TextStyle(
                      color: AppColors.greenColor, fontWeight: FontWeight.w600),
                ),
                Text(
                  ' Points',
                  style: TextStyle(
                      color: AppColors.greenColor, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            leading: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F7FA),
                      borderRadius: BorderRadius.circular(7)),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image5.jfif'),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.34,
                            color: Colors.white,
                            strokeAlign: BorderSide.strokeAlignOutside),
                        borderRadius: BorderRadius.circular(9),
                        color: AppColors.onlineColor),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 6);
              },
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
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
              child: const Row(
                children: [
                  Text(
                    'Upcoming',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff303030)),
                  ),
                  Text(
                    ' course of this week',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff303030)),
                  ),
                ],
              )),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 40,
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
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 400,
            child: CarouselSlider.builder(
              carouselController: CarouselSliderController(),
              options: CarouselOptions(
                enlargeFactor: 0.4,
                disableCenter: true,
                onPageChanged: (index, reason) {
                  imageSelectedIndex = index;
                  setState(() {});
                },
                viewportFraction: 0.67,
                enableInfiniteScroll: false,
                padEnds: false,
                height: 350,
                enlargeCenterPage: true,
              ),
              itemCount: 5,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                          padding: const EdgeInsets.only(left: 15.5),
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
          const SizedBox(
            height: 13,
          ),
          SmoothPageIndicator(
            controller: PageController(initialPage: imageSelectedIndex),
            count: 5,
            effect: ExpandingDotsEffect(
                dotHeight: 5,
                radius: 7,
                dotColor: const Color(0xffeeeeee),
                activeDotColor: AppColors.praimeryButtonColor,
                dotWidth: 13.5,
                expansionFactor: 1.1),
          ),
        ]),
      ),
    );
  }
}
