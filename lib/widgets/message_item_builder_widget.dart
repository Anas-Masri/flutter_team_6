import 'package:flutter/material.dart';

class MessageItemBuilderWidget extends StatelessWidget {
  const MessageItemBuilderWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.subTitle,
      required this.isOnline,
      this.numberOfMasseges = 0,
      required this.isNotRead,
      required this.time});
  final String title;
  final String image;
  final String subTitle;
  final String time;
  final bool isOnline;
  final int numberOfMasseges;
  final bool isNotRead;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff303030),
                fontWeight: FontWeight.w600,
                fontSize: 14.4),
          ),
          subtitle: Text(
            subTitle,
            maxLines: 2,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12.6,
              fontWeight: FontWeight.w400,
              color: Color(0xff8C8C8C),
            ),
          ),
          leading: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                ],
              ),
              Positioned(
                top: 30,
                left: 30,
                child: isOnline
                    ? Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.34,
                                color: Colors.white,
                                strokeAlign: BorderSide.strokeAlignOutside),
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.green),
                      )
                    : const SizedBox(),
              )
            ],
          ),
        ),
        Positioned(
            top: 0,
            right: 16,
            child: Row(
              children: [
                Text(
                  time,
                  style: const TextStyle(
                      color: Color(0xffC7C9D9),
                      fontFamily: 'Poppins2',
                      fontWeight: FontWeight.w400),
                ),
                const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xffC7C9D9),
                  size: 21,
                )
              ],
            )),
        Positioned(
          bottom: 14,
          right: 21,
          child: isNotRead
              ? Container(
                  alignment: Alignment.center,
                  height: 21.5,
                  width: 21.5,
                  decoration: BoxDecoration(
                      color: const Color(0xff0082CD),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    '$numberOfMasseges',
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              : const SizedBox(),
        )
      ],
    );
  }
}
