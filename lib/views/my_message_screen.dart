import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_7/constants/app_colors.dart';
import 'package:task_7/constants/app_svg_icon.dart';
import 'package:task_7/widgets/message_item_builder_widget.dart';

class MyMessageScreen extends StatefulWidget {
  const MyMessageScreen({super.key});

  @override
  State<MyMessageScreen> createState() => _MyMessageScreenState();
}

class _MyMessageScreenState extends State<MyMessageScreen> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: ListTile(
                  trailing: Stack(
                    children: [
                      SvgPicture.asset(AppSvgIcon.notification),
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
                      ),
                    ],
                  ),
                  title: const Text('My Messages'),
                  subtitle: const Text(
                    '+2 new messages',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Color(0xffC7C9D9),
                        fontWeight: FontWeight.w400),
                  ),
                  leading: Stack(
                    children: [
                      Container(
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
                          width: 9,
                          height: 9,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.34,
                                  color: Colors.white,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.green),
                        ),
                      )
                    ],
                  ),
=======
     debugPrint("MyMessageScreen is being built");
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: ListTile(
              trailing: Stack(
                children: [
                  SvgPicture.asset(AppSvgIcon.notification),
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
              title: const Text('My Messages'),
              subtitle: const Text(
                '+2 new messages',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    color: Color(0xffC7C9D9),
                    fontWeight: FontWeight.w400),
              ),
              leading: Stack(
                children: [
                  Container(
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
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.34,
                              color: Colors.white,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.green),
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
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 26),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: SizedBox(
                        width: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: AppColors.praimeryButtonColor),
                              child: const Icon(
                                Icons.search,
                                color:Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      ),
                      hintStyle: const TextStyle(color: Color(0xff9D9FA0)),
                      hintText: 'Search here',
                      filled: true,
                      fillColor:AppColors.disactiveButtonColor,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.5))),
>>>>>>> ed3635fa6322faf16ba509e51f135bd90527ca4f
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 26),
                    child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: SizedBox(
                            width: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(9),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: AppColors.praimeryButtonColor),
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                )
                              ],
                            ),
                          ),
                          hintStyle: const TextStyle(color: Color(0xff9D9FA0)),
                          hintText: 'Search here',
                          filled: true,
                          fillColor: const Color(0xffF6F7FA),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(5.5))),
                    ),
                  ),
                  const MessageItemBuilderWidget(
                      time: '15 min  ',
                      isNotRead: true,
                      numberOfMasseges: 4,
                      isOnline: true,
                      title: 'Roger Hulg',
                      image: 'assets/images/Avatar 4.png',
                      subTitle:
                          'Hey, can i ask something? i need your help please'),
                  const MessageItemBuilderWidget(
                      time: 'Yesterday  ',
                      isNotRead: false,
                      isOnline: false,
                      title: 'Hilman Nuris',
                      image: 'assets/images/Avatar 5.png',
                      subTitle: 'thank’s for your information dude!'),
                  const MessageItemBuilderWidget(
                      time: 'Yesterday  ',
                      isNotRead: true,
                      numberOfMasseges: 1,
                      isOnline: true,
                      title: 'Erick Lawrence',
                      image: 'assets/images/Avatar 6.png',
                      subTitle:
                          'Did you take the free illustration class yesterday?'),
                  const MessageItemBuilderWidget(
                      time: '2 week ago  ',
                      isNotRead: true,
                      numberOfMasseges: 2,
                      isOnline: true,
                      title: 'Jennifer Dunn',
                      image: 'assets/images/Avatar.png',
                      subTitle:
                          'Hey Samuel, where did you get your point? can we exchange?'),
                  const MessageItemBuilderWidget(
                      time: '14/08/20  ',
                      isNotRead: false,
                      isOnline: false,
                      title: 'Andy Warhol',
                      image: 'assets/images/Avatar11.png',
                      subTitle: 'that’s true bro, hahaha'),
                  const MessageItemBuilderWidget(
                      time: '13/08/20  ',
                      isNotRead: false,
                      isOnline: false,
                      title: 'Thomas Partrey',
                      image: 'assets/images/Avatar 8.png',
                      subTitle: 'nice sam'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
