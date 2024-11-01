import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_7/core/widgets/cheak_box_widget.dart';
import 'package:task_7/core/widgets/custom_text_form_field_widget.dart';
import 'package:task_7/core/widgets/time_avilable_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.5),
        color: Colors.white,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 21, right: 15, left: 15, bottom: 21),
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
                        fontSize: 16,
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
                    borderRadius: BorderRadius.all(Radius.circular(7.22)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3.5, top: 3),
                      child: SvgPicture.asset(
                        alignment: Alignment.center,
                        'assets/svgs/calendar.svg',
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
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 28,
                    childAspectRatio: 2),
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  List<String> time = [
                    '14:45 Pm',
                    '09:25 Am',
                    '09:45 AM',
                    '08:55 PM',
                    '07:45 PM',
                    '14:40 AM',
                    '10:45 AM',
                    '08:40 PM',
                    '07:35 AM',
                  ];
                  List<bool> available = [
                    false,
                    false,
                    true,
                    true,
                    true,
                    false,
                    false,
                    true,
                    true,
                  ];
                  return TimeAvilableWidget(
                    isAvailable: available[index],
                    time: time[index],
                  );
                },
              ),
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
                  CustomTextFormFieldWidget(
                    controller: TextEditingController(),
                    hintText: 'samuel_herickson@gmail.com',
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
                  CustomTextFormFieldWidget(
                    controller: TextEditingController(),
                    hintText: '(001) 34 4567890',
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
                const CheakBoxWidget(),
                SizedBox(
                  width: screenWidth * 0.025,
                ),
                const Text(
                  '12 October, 2020 at 09.45 AM',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.63,
                    color: Color(0xff9D9FA0),
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
                  borderRadius: BorderRadius.all(Radius.circular(7.22)),
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
    );
  }
}
