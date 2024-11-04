import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_fonts.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';
import 'package:task_7/core/widgets/custom_button_widget.dart';
import 'package:task_7/core/widgets/position_container_text_widget.dart';
import 'package:task_7/core/widgets/bottom_sheet.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

PageController controller = PageController();
int imageSelectedIndex = 0;
int selectedIndex = 0;

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController telpNumber = TextEditingController();
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButtonWidget(
          color: AppColors.praimeryButtonColor,
          textColor: AppColors.whiteTextColor,
          text: 'Follow class',
          onTap: () {
            email = TextEditingController();
            telpNumber = TextEditingController();
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return BottomSheetWidget(
                  email: email,
                  telpNumber: telpNumber,
                );
              },
            );
          },
        ),
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 66, left: 14, right: 14),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.greyButtonColor),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.praimeryButtonColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Detail course',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFonts.poppins),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      SizedBox(
                          height: 20.h,
                          width: 18.w,
                          child: SvgPicture.asset(AppSvgIcon.notification)),
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
                ],
              ),
              SizedBox(
                height: 37.h,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 309.w,
                    height: 207.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: Image.asset(
                        'assets/images/BG image.jfif',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 309.w,
                    height: 207.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.3),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                  ),
                  Container(
                    height: 70.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(65),
                        color: Colors.white.withOpacity(0.45)),
                  ),
                  Icon(
                    color: Colors.white,
                    Icons.play_circle,
                    size: 65.r,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 250.w,
                    child: Text(
                      textAlign: TextAlign.left,
                      'Step design sprint for beginner',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 21.sp,
                          fontFamily: AppFonts.poppins),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  PositionContainerTextWidget(
                    insideStack: false,
                    radius: 3.6,
                    color: AppColors.cyanContainerColor,
                    text: '6 lessons',
                  ),
                  PositionContainerTextWidget(
                    insideStack: false,
                    radius: 3.6,
                    color: AppColors.blueContainerColor,
                    text: 'Design',
                  ),
                  PositionContainerTextWidget(
                    insideStack: false,
                    radius: 3.6,
                    color: AppColors.purpleContainerColor,
                    text: 'free',
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                  style: TextStyle(
                      fontFamily: AppFonts.poppins,
                      color: AppColors.subtitleTextColor,
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.w400),
                  '''In this course I'll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.'''),
              ListTile(
                leading: SizedBox(
                  width: 50,
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment(-4, 0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_image.jfif'),
                        ),
                      ),
                      Positioned(
                          right: 25,
                          bottom: 8,
                          child: Container(
                            width: 9.w,
                            height: 9.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.iconBorderColor,
                                    width: 1.35),
                                color: AppColors.onlineColor,
                                borderRadius: BorderRadius.circular(25)),
                          ))
                    ],
                  ),
                ),
                title: Align(
                  alignment: const Alignment(-2.8, 0),
                  child: Text(
                    'Laurel Seilha',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: AppFonts.poppins,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp),
                  ),
                ),
                subtitle: Align(
                  alignment: const Alignment(-2, 0),
                  child: Text(
                    'Product Designer',
                    style: TextStyle(
                        color: AppColors.subtitleTextColor,
                        fontFamily: AppFonts.poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: 9.sp),
                  ),
                ),
                trailing: SizedBox(
                  width: 100.w,
                  child: Align(
                    alignment: const Alignment(4, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 60.w,
                          height: 20.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(AppSvgIcon.timeIcon),
                              Text(
                                ' 5h 21m',
                                style: TextStyle(
                                    fontFamily: AppFonts.poppins,
                                    color: const Color(0xff8C8C8C),
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        SizedBox(
                          width: 82.w,
                          height: 21.h,
                          child: PositionContainerTextWidget(
                            insideStack: false,
                            radius: 18,
                            color: AppColors.orangeContainerColor,
                            text: 'Free e-book',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.greyButtonColor),
                width: 309.w,
                height: 75.h,
                child: ListTile(
                  subtitle: const Text(
                    '04:10m',
                    style: TextStyle(color: Color(0xff8C8C8C)),
                  ),
                  title: Text(
                    'How to get feedback on their products in just 5 days',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        fontFamily: AppFonts.poppins),
                  ),
                  leading: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/orange square.png'),
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
