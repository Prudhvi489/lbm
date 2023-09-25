import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labham_subham_web/utils/image_paths.dart';
import 'package:labham_subham_web/utils/text_sizes.dart';
import 'package:labham_subham_web/widgets/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../utils/app_colors.dart';
import '../utils/font_family.dart';
import '../utils/logo.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';

class ServicesConainer extends StatefulWidget {
  const ServicesConainer({Key? key}) : super(key: key);

  @override
  State<ServicesConainer> createState() => _ServicesConainerState();
}

class _ServicesConainerState extends State<ServicesConainer> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (cxt, sizingInformation) {
      return sizingInformation.deviceScreenType == DeviceScreenType.desktop
          ? desktop(sizingInformation, context)
          : mobile(sizingInformation);
    });
  }
}

Widget cTextHeading(text1) {
  return SizedBox(
    width: 60.w,
    child: Text(
      text1,
      style: TextStyle(
          fontFamily: fontFamily, fontSize: text, fontWeight: FontWeight.bold),
      maxLines: 4,
      softWrap: true,
      overflow: TextOverflow.clip,
    ),
  );
}

Widget cText(text1) {
  return SizedBox(
    width: 60.w,
    child: Text(
      text1,
      textAlign: TextAlign.justify,
      style: TextStyle(fontFamily: fontFamily, fontSize: 12.sp),
      // maxLines: 4,
      softWrap: true,
      overflow: TextOverflow.clip,
    ),
  );
}

Widget mobile(sizingInformation) {
  return Scaffold(
    appBar: mobileAppBar(),
    drawer: DrawerWidget(),
    backgroundColor: backGroundColor,
    body: SingleChildScrollView(
      child: Column(
        children: [
          /// Services Heading Text
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'Services',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: heading,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.bold),
            ),
          ),
          /// Services Description Text
          ShowUpAnimation(
            delayStart: const Duration(milliseconds: 0),
            animationDuration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOutCubicEmphasized,
            direction: Direction.horizontal,
            offset: -0.9,
            child: SizedBox(
              width: 60.w,
              child: Text(
                '''Labam Subham offers services like Vastu predictions, Jathaka predictions. We will provide Priest(Pandit / Purohithulu) for any types of Homalu, Vrathalu, Poojalu. We can also offer Pooja Samagri like Turmeric(Pasupu), Kumkuma, Fruits, Flowers, Homa Samagri, Pooja items, etc.''',
                maxLines: 7,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: fontFamily,
                    fontSize: text),
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          /// Service 1
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpAnimation(
                delayStart: const Duration(seconds: 0),
                animationDuration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: -0.9,
                child: SizedBox(
                    width: 50.w, height: 40.w, child: Image.asset(services1)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cTextHeading('House warming ceremony pooja'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: footerColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 500),
                    animationDuration: const Duration(milliseconds: 1500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: 0.9,
                    child: cText(
                      '''Before moving into a new home, gruhapravesha is conducted to expel negative influences and doshas and to accelerate the growth of positive energy. Griha Pravesh is performed to protect the home from common disasters and to bring harmony and prosperity to the residents of the house. It is carried out by performing several havans such as the ganesh havan, navagraha, vastu, and varun havan as well as performing dwar puja, bubbling milk, Gauri-ganesh, kalash, navgraha, and vastu puja.'''
                    ) ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          /// Service 2
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 1000),
                    animationDuration: const Duration(milliseconds: 2000),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: -0.9,
                    child: SizedBox(
                        width: 50.w,
                        height: 40.w,
                        child: Image.asset(services2)),
                  ),
                  cTextHeading('Ganesh Pooja'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: footerColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 1500),
                    animationDuration: const Duration(milliseconds: 2500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: 0.9,
                    child: cText(
                      '''We all pray to Lord Vinayaka to help us overcome hurdles and achieve prosperity in our lives. Even Gods, Saints, Kings, and ordinary people pray to Ganapathi to protect themselves by avoiding obstacles, achieving prosperity, and having a healthy and prosperous life.'''
                     ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          /// Service 3
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 2000),
                animationDuration: const Duration(milliseconds: 3000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: -0.9,
                child: SizedBox(
                    width: 50.w, height: 40.w, child: Image.asset(services3)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cTextHeading('Wedding Muhurtham & Muhurtha \'s  for all'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: footerColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 2500),
                    animationDuration: const Duration(milliseconds: 3500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: 0.9,
                    child: cText(
                        '''As per your Janma Nakshatram and Rasi , we will scientifically analyse and set Muhurtham date for any of your occasions like Marriages, House Warming, Homams, Vrathalu, Nomulu, auspicious time you can purchase ornaments and wear ornaments, etc'''),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          /// Service 4
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 3000),
                    animationDuration: const Duration(milliseconds: 4000),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: -0.9,
                    child: SizedBox(
                        width: 50.w,
                        height: 40.w,
                        child: Image.asset(services4)),
                  ),
                  cTextHeading('Homalu & Yagnalu'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: footerColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 3500),
                    animationDuration: const Duration(milliseconds: 4500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: 0.9,
                    child: cText(
                      '''All Gods, Saints, and Kings have performed these Yagnas and Homas from ancient times. By performing these Homas and Yagnas, we will receive God's blessings to accomplish our life's objectives. Based on your Jathakam  we will recommend which Yagnam and Homam will be suitable for you.'''
                     ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          /// Service 5
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 4000),
                animationDuration: const Duration(milliseconds: 5000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: -0.9,
                child: SizedBox(
                    width: 50.w, height: 40.w, child: Image.asset(services5)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cTextHeading('Palmistry'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: footerColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 4500),
                    animationDuration: const Duration(milliseconds: 5500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: 0.9,
                    child: cText(
                        '''Based on your Date of Birth, hastha rekalu we will create Jathaka Chakram. And also based on your Raasi and Ganana we will predict your date of Marriage, Education in Abroad, etc.
As per your Jathaka Chakram we will analyse and let you know the uncertainities of your life and suggest you various poojas for Dosha Nivarana.Knowing your Jathakam will help you in overcoming obstacles in your life
'''),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          /// Service 6
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 4000),
                animationDuration: const Duration(milliseconds: 5000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: -0.9,
                child: SizedBox(
                    width: 50.w, height: 40.w, child: Image.asset(services6)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cTextHeading('Nomulu & Vrathalu'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: footerColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 4500),
                    animationDuration: const Duration(milliseconds: 5500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: 0.9,
                    child: cText(
                           '''Nomulu and vratalu are extremely essential for a women in a Hindu religion. Every woman will worship the gods in order to have their wishes granted, to have a happy marriage, to be healthy, and to be affluent.'''
                  ),
                  )],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          /// Service 7
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 4000),
                animationDuration: const Duration(milliseconds: 5000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: -0.9,
                child: SizedBox(
                    width: 50.w, height: 40.w, child: Image.asset(services7)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cTextHeading('Vasthu'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: footerColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 4500),
                    animationDuration: const Duration(milliseconds: 5500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: 0.9,
                    child: cText(
                      '''A House is regarded to be every person's Paradise.We will provide our customers the best vasthu plan for their new construction housess and  we will also check your old house vastu and suggest you the solution to overcome your difficulties.'''
                         ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          /// Supplies  Heading  Text
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'Supplies',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: heading,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                      height: 7.w,
                      width: 7.w,
                      child: Image.asset(sannayeMellamBand)),
                  const SizedBox(
                    height: 20,
                  ),
                  SelectableText("Sannaye Mellam Band",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: text)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: 7.w,
                      width: 7.w,
                      child: Image.asset(purohithulu)),
                  const SizedBox(
                    height: 20,
                  ),
                  SelectableText("Purohithulu",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: text)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: 7.w,
                      width: 7.w,
                      child: Image.asset(poojaSamagri)),
                  const SizedBox(
                    height: 20,
                  ),
                  SelectableText("Pooja Samagri",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: text)),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                      height: 7.w, width: 7.w, child: Image.asset(flowers)),
                  const SizedBox(
                    height: 20,
                  ),
                  SelectableText("Flowers",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: text)),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Footer(
            sizingInformation: sizingInformation,
          ),
        ],
      ),
    ),
  );
}

Widget desktop(sizingInformation, BuildContext context) {
  return Scaffold(
    appBar: deskTopAppBar(context, sizingInformation, 1),
    backgroundColor: backGroundColor,
    body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: backGroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Service Heading text
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 0),
              child: Text(
                'Services',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: heading,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// Services Description Text
            ShowUpAnimation(
              delayStart: const Duration(milliseconds: 0),
              animationDuration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOutCubicEmphasized,
              direction: Direction.horizontal,
              offset: -0.9,
              child: SizedBox(
                width: 80.w,
                child: Text(
                  '''Labam Subham offers services like Vastu predictions, Jathaka predictions. We will provide Priest(Pandit / Purohithulu) for any types of Homalu, Vrathalu, Poojalu. We can also offer Pooja Samagri like Turmeric(Pasupu), Kumkuma, Fruits, Flowers, Homa Samagri, Pooja items, etc.''',
                  maxLines: 7,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: fontFamily,
                      fontSize: text),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),

            /// Service 1
            Container(
              // color:Colors.yellow,
              // height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShowUpAnimation(
                      delayStart: const Duration(seconds: 0),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: -0.9,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(services1))),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cTextHeading('House warming ceremony pooja'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 60,
                        color: footerColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                        delayStart: const Duration(seconds: 0),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: cText(
                          '''Before moving into a new home, gruhapravesha is conducted to expel negative influences and doshas and to accelerate the growth of positive energy. Griha Pravesh is performed to protect the home from common disasters and to bring harmony and prosperity to the residents of the house. It is carried out by performing several havans such as the ganesh havan, navagraha, vastu, and varun havan as well as performing dwar puja, bubbling milk, Gauri-ganesh, kalash, navgraha, and vastu puja.'''
                        ) ),
                    ],
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            /// Service 2
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cTextHeading('Ganesh Pooja'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 60,
                        color: footerColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 500),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: cText(
                          '''We all pray to Lord Vinayaka to help us overcome hurdles and achieve prosperity in our lives. Even Gods, Saints, Kings, and ordinary people pray to Ganapathi to protect themselves by avoiding obstacles, achieving prosperity, and having a healthy and prosperous life.'''
                         ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 500),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: 0.9,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(services2))),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            /// Service 3
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1000),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: -0.9,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(services3))),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cTextHeading('Wedding Muhurtham & Muhurha\'s for all'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 60,
                        color: footerColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1000),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: cText(
                            '''As per your Janma Nakshatram and Rasi , we will scientifically analyse and set Muhurtham date for any of your occasions like Marriages, House Warming, Homams, Vrathalu, Nomulu, auspicious time you can purchase ornaments and wear ornaments, etc'''),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            /// Service 4
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cTextHeading('Homalu & Yagnalu'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 60,
                        color: footerColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1500),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: cText(
                          '''All Gods, Saints, and Kings have performed these Yagnas and Homas from ancient times. By performing these Homas and Yagnas, we will receive God's blessings to accomplish our life's objectives. Based on your Jathakam  we will recommend which Yagnam and Homam will be suitable for you.'''
                         ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1500),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: 0.9,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(services4))),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Service 5
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 2000),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: -0.9,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(services5))),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cTextHeading('Palmistry'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 60,
                        color: footerColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 2000),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: cText(
                            '''Based on your Date of Birth, hastha rekalu we will create Jathaka Chakram. And also based on your Raasi and Ganana we will predict your date of Marriage, Education in Abroad, etc. As per your Jathaka Chakram we will analyse and let you know the uncertainities of your life and suggest you various poojas for Dosha Nivarana.Knowing your Jathakam will help you in overcoming obstacles in your life
'''),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Service 6
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cTextHeading('Nomulu & Vrathalu'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 60,
                        color: footerColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1500),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: cText(
                          '''Nomulu and vratalu are extremely essential for a women in a Hindu religion. Every woman will worship the gods in order to have their wishes granted, to have a happy marriage, to be healthy, and to be affluent'''
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1500),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: 0.9,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(services6))),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Service 7
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 2000),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: -0.9,
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(services7))),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cTextHeading('Vasthu'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: 60,
                        color: footerColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 2000),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: cText(
                          '''A House is regarded to be every person's Paradise.We will provide our customers the best vasthu plan for their new construction housess and  we will also check your old house vastu and suggest you the solution to overcome your difficulties.'''
                        )  ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            /// Supplies images and their text row
            /// Supplies Heading text
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 0),
              child: Text(
                'Supplies',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: heading,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 7.w,
                        width: 7.w,
                        child: Image.asset(sannayeMellamBand)),
                    const SizedBox(
                      height: 20,
                    ),
                    SelectableText("Sannaye Mellam Band",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: text)),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 7.w,
                        width: 7.w,
                        child: Image.asset(purohithulu)),
                    const SizedBox(
                      height: 20,
                    ),
                    SelectableText("Purohithulu",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: text)),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 7.w,
                        width: 7.w,
                        child: Image.asset(poojaSamagri)),
                    const SizedBox(
                      height: 20,
                    ),
                    SelectableText("Pooja Samagri",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: text)),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 7.w, width: 7.w, child: Image.asset(flowers)),
                    const SizedBox(
                      height: 20,
                    ),
                    SelectableText("Flowers",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: text)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Footer(
              sizingInformation: sizingInformation,
            ),
          ],
        ),
      ),
    ),
  );
}
