import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_7/views/home_page.dart';
import 'package:task_7/views/map_page.dart';
import 'package:task_7/views/profile_page.dart';
import 'package:task_7/core/widgets/bottom_nav_bar_widget.dart';

import '../core/widgets/time_avilable_widget.dart';
import 'customtextfield.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  final TextEditingController _controller = TextEditingController();
  bool _isSelected = false;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(21.65)),
                  child: Container(
                    height: screenHeight * 0.77,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 21, right: 15, left: 15, bottom: 21),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Available time',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.24,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  Text(
                                    'Adjust to your schedule',
                                    style: TextStyle(
                                      color: Color(0xff9d9fa0),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.44,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: screenWidth * 0.1,
                                height: screenHeight * 0.053,
                                decoration: const BoxDecoration(
                                  color: Color(0xff9d9fa0),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(7.22)),
                                ),
                                child: Center(

                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 3.5,top: 3),
                                    child: SvgPicture.asset(
                                      alignment: Alignment.center,
                                      'assets/icon/calendar.svg',
                                      width: screenWidth * 0.07,
                                      height: screenHeight * 0.037,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.045,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    const TimeAvilableWidget(
                                      isAvailable: false,
                                      time: '14:45 PM',
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.135,
                                    ),
                                    const TimeAvilableWidget(
                                      isAvailable: false,
                                      time: '09:25 AM',
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.135,
                                    ),
                                    const TimeAvilableWidget(
                                      isAvailable: true,
                                      time: '09:45 AM',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    const TimeAvilableWidget(
                                      isAvailable: true,
                                      time: '08:55 PM',
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.135,
                                    ),
                                    const TimeAvilableWidget(
                                      isAvailable: true,
                                      time: '07:45 PM',
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.135,
                                    ),
                                    const TimeAvilableWidget(
                                      isAvailable: false,
                                      time: '14:40 AM',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    const TimeAvilableWidget(
                                      isAvailable: false,
                                      time: '10:45 AM',
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.135,
                                    ),
                                    const TimeAvilableWidget(
                                      isAvailable: true,
                                      time: '08:40 PM',
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.135,
                                    ),
                                    const TimeAvilableWidget(
                                      isAvailable: true,
                                      time: '07:35 AM',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.03,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Email',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.63,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.004,
                                ),
                                CustomTextField(
                                  hintText: 'samuel_herickson@gmail.com',
                                  controller1: _controller,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Telp number',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.63,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.004,
                                ),
                                CustomTextField(
                                  hintText: '(001) 34 4567890',
                                  controller1: _controller,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Schedule date & time',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.63,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.005,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  _isSelected = !_isSelected;
                                  setState(() {});
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff9D9FA0).withOpacity(0.4)),
                                  child: _isSelected
                                      ? SvgPicture.asset('assets/icon/Fill 4.svg')
                                      : const SizedBox(),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.025,
                              ),
                              const Text(
                                '12 October, 2020 at 09.45 AM',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.63,
                                  fontFamily: 'Poppins',
                                ),
                              ),

                            ],

                          ),
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),

                          Container(
                            width: double.infinity,
                            height: 52,
                            decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(7.22)),
                                color: Color(0xffFF8500)),
                            child: const Center(
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
