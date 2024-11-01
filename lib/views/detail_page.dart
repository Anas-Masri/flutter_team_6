import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_7/core/constants/app_colors.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';
import 'package:task_7/core/widgets/custom_button_widget.dart';
import 'package:task_7/core/widgets/position_container_text_widget.dart';

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
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CustomButtonWidget(
          color: AppColors.praimeryButtonColor,
          textColor: Colors.white,
          text: 'Follow class',
          onTap: () {},
        ),
        backgroundColor: Colors.white,
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
                          color: const Color(0xffF6F7FA)),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.praimeryButtonColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Detail course',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      SizedBox(
                          height: 20,
                          width: 18,
                          child: SvgPicture.asset(AppSvgIcon.notification)),
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
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 338 * 309,
                    height: MediaQuery.of(context).size.height / 732 * 207,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: Image.asset(
                        'assets/images/BG image.jfif',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(
                      textAlign: TextAlign.left,
                      'Step design sprint for beginner',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 21,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  PositionContainerTextWidget(
                    insideStack: false,
                    radius: 3.6,
                    color: Color(0xff4DC9D1),
                    text: '6 lessons',
                  ),
                  PositionContainerTextWidget(
                    insideStack: false,
                    radius: 3.6,
                    color: Color(0xff0082CD),
                    text: 'Design',
                  ),
                  PositionContainerTextWidget(
                    insideStack: false,
                    radius: 3.6,
                    color: Color(0xff8D5EF2),
                    text: 'free',
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xff9D9FA0),
                      fontSize: 12.5,
                      fontWeight: FontWeight.w400),
                  '''In this course I'll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.'''),
              ListTile(
                leading: const SizedBox(
                  width: 50,
                  child: Align(
                    alignment: Alignment(-4, 0),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profile_image.jfif'),
                    ),
                  ),
                ),
                title: const Align(
                  alignment: Alignment(-1.5, 0),
                  child: Text(
                    'Laurel Seilha',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
                subtitle: const Align(
                  alignment: Alignment(-1.5, 0),
                  child: Text(
                    'Product Designer',
                    style: TextStyle(
                        color: Color(0xff9D9FA0),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 9),
                  ),
                ),
                trailing: SizedBox(
                  width: 100,
                  child: Align(
                    alignment: const Alignment(4, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(AppSvgIcon.timeIcon),
                              const Text(
                                ' 5h 21m',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xff8C8C8C),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const SizedBox(
                          width: 80,
                          height: 21,
                          child: PositionContainerTextWidget(
                            insideStack: false,
                            radius: 18,
                            color: Color(0xffFCCC75),
                            text: 'Free e-book',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
