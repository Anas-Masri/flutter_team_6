import 'package:flutter/material.dart';

class PositionContainerTextWidget extends StatelessWidget {
  const PositionContainerTextWidget({
    super.key,
    required this.top,
    required this.left,
    required this.color,
    required this.text,
    required this.radius,
  });
  final double top;
  final double left;
  final double radius;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        alignment: Alignment.center,
        height: 17,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius), color: color),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
