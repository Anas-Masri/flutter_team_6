import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
<<<<<<< HEAD
=======

>>>>>>> b17335f0a5aacd6572a614c4dec42464d70fd6de
  const CustomButtonWidget(
      {super.key,
      this.onTap,
      required this.text,
      required this.textColor,
      required this.color,
      this.hasShadow = false,
      this.icon = const SizedBox(),
      this.hasIcon = false});
  final void Function()? onTap;
  final String text;
  final Color textColor;
  final Color color;
  final Widget icon;
  final bool hasShadow;
  final bool hasIcon;
<<<<<<< HEAD
=======

>>>>>>> b17335f0a5aacd6572a614c4dec42464d70fd6de
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
<<<<<<< HEAD
=======

>>>>>>> b17335f0a5aacd6572a614c4dec42464d70fd6de
        width: MediaQuery.of(context).size.width / 338 * 310,
        height: MediaQuery.of(context).size.height / 732 * 50.5,
        decoration: BoxDecoration(boxShadow: [
          hasShadow
              ? BoxShadow(
                  blurRadius: 12.63,
                  offset: const Offset(0, 4.5),
                  color: const Color(0xEC5F5F40).withOpacity(0.25))
              : const BoxShadow()
        ], borderRadius: BorderRadius.circular(7.5), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon ? icon : const SizedBox(),
            hasIcon
                ? const SizedBox(
                    width: 14,
                  )
                : const SizedBox(),
            Text(
              text,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.5,
                  fontFamily: 'Poppins'),
            ),
          ],
<<<<<<< HEAD
=======

>>>>>>> b17335f0a5aacd6572a614c4dec42464d70fd6de
        ),
      ),
    );
  }
}
