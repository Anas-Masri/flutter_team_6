import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';
import 'package:task_7/core/widgets/message_item_builder_widget.dart';

class MyMessageScreen extends StatefulWidget {
  const MyMessageScreen({super.key});

  @override
  State<MyMessageScreen> createState() => _MyMessageScreenState();
}

class _MyMessageScreenState extends State<MyMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ListTile(
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
                              color: Colors.white,
                              width: 1.35.w,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          borderRadius: BorderRadius.circular(8).r,
                          color: AppColors.praimeryButtonColor),
                    ),
                  )
                ],
              ),
              title: Text(
                'My Messages',
                style: TextStyle(
                    fontFamily: AppFonts.poppinsBold,
                    fontSize: 14.5.sp,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                '+2 new messages',
                style: TextStyle(
                    fontSize: 12.6.sp,
                    fontFamily: AppFonts.poppins,
                    color: AppColors.grayTextColor,
                    fontWeight: FontWeight.w400),
              ),
              leading: Stack(
                children: [
                  Container(
                    height: 35.h,
                    width: 35.w,
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
                      width: 9.w,
                      height: 9.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.34.w,
                              color: Colors.white,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          borderRadius: BorderRadius.circular(9),
                          color: AppColors.onlineColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 26).r,
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: SizedBox(
                        width: 50.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: AppColors.praimeryButtonColor),
                              child: Icon(
                                Icons.search,
                                color: AppColors.iconBorderColor,
                              ),
                            ),
                            SizedBox(
                              width: 5.5.w,
                            )
                          ],
                        ),
                      ),
                      hintStyle: TextStyle(color: AppColors.subtitleTextColor),
                      hintText: 'Search here',
                      filled: true,
                      fillColor: AppColors.textFormFieldBackgroundColor,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.5))),
                ),
              ),
              SizedBox(
                height: 450.h,
                child: ListView(
                  children: const [
                    MessageItemBuilderWidget(
                        time: '15 min  ',
                        isNotRead: true,
                        numberOfMasseges: 4,
                        isOnline: true,
                        title: 'Roger Hulg',
                        image: 'assets/images/Avatar 4.png',
                        subTitle:
                            'Hey, can i ask something? i need your help please'),
                    MessageItemBuilderWidget(
                        time: 'Yesterday  ',
                        isNotRead: false,
                        isOnline: false,
                        title: 'Hilman Nuris',
                        image: 'assets/images/Avatar 5.png',
                        subTitle: 'thank’s for your information dude!'),
                    MessageItemBuilderWidget(
                        time: 'Yesterday  ',
                        isNotRead: true,
                        numberOfMasseges: 1,
                        isOnline: true,
                        title: 'Erick Lawrence',
                        image: 'assets/images/Avatar 6.png',
                        subTitle:
                            'Did you take the free illustration class yesterday?'),
                    MessageItemBuilderWidget(
                        time: '2 week ago  ',
                        isNotRead: true,
                        numberOfMasseges: 2,
                        isOnline: true,
                        title: 'Jennifer Dunn',
                        image: 'assets/images/Avatar.png',
                        subTitle:
                            'Hey Samuel, where did you get your point? can we exchange?'),
                    MessageItemBuilderWidget(
                        time: '14/08/20  ',
                        isNotRead: true,
                        numberOfMasseges: 2,
                        isOnline: false,
                        title: 'Andy Warhol',
                        image: 'assets/images/Avatar11.png',
                        subTitle: 'that’s true bro, hahaha'),
                    MessageItemBuilderWidget(
                        time: '13/08/20  ',
                        isNotRead: false,
                        numberOfMasseges: 2,
                        isOnline: true,
                        title: 'Thomas Partrey',
                        image: 'assets/images/Avatar 8.png',
                        subTitle: '....'),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
