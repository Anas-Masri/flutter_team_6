import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';
import 'package:task_7/core/widgets/position_container_text_widget.dart';

class StackItemWidget extends StatelessWidget {
  const StackItemWidget({
    super.key,
    required this.isNotSelected,
  });
  final bool isNotSelected;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 255,
          height: 330,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(21),
            child: Image.asset(
              'assets/images/BG image.jfif',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 255,
          height: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter)),
        ),
        const PositionContainerTextWidget(
          radius: 18,
          color: Color(0xffFCCC75),
          left: 14.5,
          text: 'Free e-book',
          top: 22,
        ),
        const Positioned(
          top: 173,
          left: 15,
          child: SizedBox(
            width: 226,
            child: Text(
              'Step design sprint for beginner',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Positioned(
          top: 222,
          left: 15.5,
          child: SvgPicture.asset(AppSvgIcon.timeIcon),
        ),
        const Positioned(
          top: 222,
          left: 37,
          child: Text(
            '5h 21m',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff8C8C8C),
                fontSize: 9,
                fontWeight: FontWeight.w600),
          ),
        ),
        const PositionContainerTextWidget(
          radius: 3.6,
          color: Color(0xff4DC9D1),
          left: 15.5,
          top: 250,
          text: '6 lessons',
        ),
        const PositionContainerTextWidget(
          radius: 3.6,
          color: Color(0xff0082CD),
          left: 76,
          top: 250,
          text: 'UI/UX',
        ),
        const PositionContainerTextWidget(
          radius: 3.6,
          color: Color(0xff8D5EF2),
          left: 118,
          top: 250,
          text: 'free',
        ),
        const Positioned(
            bottom: 18.5,
            child: SizedBox(
              width: 200,
              height: 50,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile_image.jfif'),
                ),
                title: Text(
                  'Laurel Seilha',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
                subtitle: Text(
                  'Product Designer',
                  style: TextStyle(
                      color: Color(0xff9D9FA0),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 9),
                ),
              ),
            )),
        isNotSelected
            ? Container(
                width: 255,
                height: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.8),
                      Colors.white.withOpacity(0.8),
                    ], begin: Alignment.bottomLeft, end: Alignment.topCenter)),
              )
            : const SizedBox(),
      ],
    );
  }
}
