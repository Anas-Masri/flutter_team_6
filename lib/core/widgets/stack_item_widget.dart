import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_7/core/constants/app_svg_icon.dart';

class StackItemWidget extends StatelessWidget {
  const StackItemWidget({super.key});

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
        Positioned(
            top: 22,
            left: 14.5,
            child: Container(
              alignment: Alignment.center,
              width: 77,
              height: 20,
              decoration: BoxDecoration(
                  color: const Color(0xffFCCC75),
                  borderRadius: BorderRadius.circular(18)),
              child: const Text(
                'Free e-book',
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            )),
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
      ],
    );
  }
}
