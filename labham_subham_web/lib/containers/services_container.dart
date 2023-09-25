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
          ? desktop(sizingInformation,context)
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
          fontFamily: fontFamily,
          fontSize: text,
          fontWeight: FontWeight.bold),
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
      style: TextStyle(fontFamily: fontFamily, fontSize: 13.sp),
      maxLines: 4,
      softWrap: true,
      overflow: TextOverflow.clip,
    ),
  );
}

Widget mobile(sizingInformation) {
  return Scaffold(
    appBar: mobileAppBar(),
    drawer: DrawerWidget(),
    body: SingleChildScrollView(
      child: Column(
        children: [
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpAnimation(
                  delayStart: const Duration(seconds: 0),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOutCubicEmphasized,
                  direction: Direction.horizontal,
                  offset: - 0.9,
                  child: SizedBox(width: 50.w,height:40.w,child: Image.asset(services1)),),

              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  cTextHeading('House warming ceremony pooja'),

                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration( milliseconds:500),
                    animationDuration: const Duration(milliseconds: 1500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset:  0.9,
                    child: cText(
                      '''' publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                    ),),

                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShowUpAnimation(
                    delayStart: const Duration( milliseconds:1000),
                    animationDuration: const Duration(milliseconds: 2000),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset:  - 0.9,
                    child:  SizedBox(width: 50.w,height:40.w,child: Image.asset(services2)),),

                  cTextHeading('Ganesh Pooja'),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration( milliseconds:1500),
                    animationDuration: const Duration(milliseconds: 2500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset:   0.9,
                    child:   cText(
                      ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                    ),),

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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowUpAnimation(
                delayStart: const Duration( milliseconds:2000),
                animationDuration: const Duration(milliseconds: 3000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset:   - 0.9,
                child:     SizedBox(width: 50.w,height:40.w, child: Image.asset(services3)),),

              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cTextHeading('Wedding Muhurtha'),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration( milliseconds:2500),
                    animationDuration: const Duration(milliseconds: 3500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset:   0.9,
                    child:     cText(
                      ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                    ),),

                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShowUpAnimation(
                    delayStart: const Duration( milliseconds:3000),
                    animationDuration: const Duration(milliseconds: 4000),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset:   - 0.9,
                    child:         SizedBox(width: 50.w,height: 40.w, child: Image.asset(services4)),),

                  cTextHeading('Hoamlu & Yagnalu'),
                  const SizedBox(
                    height: 10,
                  ),
                  ShowUpAnimation(
                    delayStart: const Duration( milliseconds:3500),
                    animationDuration: const Duration(milliseconds: 4500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset:   0.9,
                    child:  cText(
                      ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                    ),),

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
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShowUpAnimation(
                  delayStart: const Duration( milliseconds:4000),
                  animationDuration: const Duration(milliseconds: 5000),
                  curve: Curves.easeInOutCubicEmphasized,
                  direction: Direction.horizontal,
                  offset:   - 0.9,
                  child:  SizedBox(width: 50.w,height:40.w, child: Image.asset(services5)),),

                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cTextHeading('Palmistry'),
                    const SizedBox(
                      height: 10,
                    ),
                    ShowUpAnimation(
                      delayStart: const Duration( milliseconds:4500),
                      animationDuration: const Duration(milliseconds: 5500),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset:    0.9,
                      child: cText(
                        ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                      ),),

                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Footer(
            sizingInformation: sizingInformation,
          ),
        ],
      ),
    ),
  );
}

Widget desktop(sizingInformation,BuildContext context) {
  return Scaffold(
    appBar: deskTopAppBar(context, sizingInformation,1),
    body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 50),
              child: Text(
                'Services',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: heading,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShowUpAnimation(
                      delayStart: const Duration(seconds: 0),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: - 0.9,
                      child: Image.asset(services1)),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cTextHeading('House warming ceremony pooja'),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                          delayStart: const Duration(seconds: 0),
                          animationDuration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset:  0.9,
                          child:   cText(
                            ''' publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                          ),),

                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cTextHeading('Ganesh Pooja'),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                          delayStart: const Duration(milliseconds: 500),
                          animationDuration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset: - 0.9,
                          child: cText(
                            ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                          ),),

                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 500),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset:  0.9,
                      child: Image.asset(services2)),

                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
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
                      offset: - 0.9,
                      child: Image.asset(services3)),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cTextHeading('Wedding Muhurtha'),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                          delayStart: const Duration(milliseconds: 1000),
                          animationDuration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset:  0.9,
                          child:  cText(
                            ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                          ),),

                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cTextHeading('Hoamlu & Yagnalu'),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                          delayStart: const Duration(milliseconds: 1500),
                          animationDuration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset: - 0.9,
                          child: cText(
                            ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                          ),),

                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1500),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset:  0.9,
                      child: Image.asset(services4)),

                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
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
                      offset: - 0.9,
                      child: Image.asset(services5)),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cTextHeading('Palmistry'),
                      const SizedBox(
                        height: 10,
                      ),
                      ShowUpAnimation(
                          delayStart: const Duration(milliseconds: 2000),
                          animationDuration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset:  0.9,
                          child: cText(
                            ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                          ),),

                    ],
                  )
                ],
              ),
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
