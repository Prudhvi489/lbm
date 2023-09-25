import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labham_subham_web/containers/services_container.dart';
import 'package:labham_subham_web/utils/font_family.dart';
import 'package:labham_subham_web/utils/logo.dart';
import 'package:labham_subham_web/widgets/carousel_slider.dart';
import 'package:labham_subham_web/widgets/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../utils/app_colors.dart';
import '../utils/image_paths.dart';
import '../utils/text_sizes.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';



class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(builder: (cxt, sizingInformation) {
        return Scaffold(
          drawer:DrawerWidget() ,
          appBar:sizingInformation.deviceScreenType == DeviceScreenType.mobile? mobileAppBar():deskTopAppBar(context, sizingInformation,0),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Carousel(
                  sizingInformation: sizingInformation,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding:
                    sizingInformation.deviceScreenType == DeviceScreenType.desktop
                        ? const EdgeInsets.symmetric(horizontal: 100)
                        : const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                       SelectableText("About Us",
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp)),
                        const SizedBox(
                          height: 10,
                        ),


                        ShowUpAnimation(
                          delayStart: const Duration(seconds: 0),
                          animationDuration: const Duration(seconds: 2),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset: 0.9,
                          child:  SelectableText(
                              "At LabamSubham,we have experience in providing Telugu Astrology services in Andhra Pradesh, India.We perform all types of Pooja, Homalu, Yagnalu, Vrathalu, Nomulu, etc, which helps our users to have a bright and prosperous future. We also provide remedies for your Vasthu and Jathakam to have a smooth and seamless future. LabamSubham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: fontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13.sp)),),



                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.go('/aboutus');
                          },
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: footerColor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ))),
                          child:SelectableText("View More",
                              style: TextStyle(
                                  fontFamily: fontFamily,
                                  color: footerColor,
                                  fontSize: 13.sp)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                       SelectableText("Services",
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp)),
                        sizingInformation.deviceScreenType == DeviceScreenType.desktop
                            ? const SizedBox(
                          height: 30,
                        )
                            : const SizedBox(
                          height: 0,
                        ),
                        SizedBox(
                          // height: 30.h,
                          width: 90.w,
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.desktop
                                      ? 15.w
                                      : 50.w,
                                  width: sizingInformation.deviceScreenType ==
                                      DeviceScreenType.desktop
                                      ? 25.w
                                      : 60.w,
                                  child: Stack(
                                    children: [
                                      Image.asset(services1),
                                      ShowUpAnimation(
                                          delayStart: const Duration(seconds: 0),
                                          animationDuration: const Duration(seconds: 3),
                                          curve: Curves.easeInOutCubicEmphasized,
                                          direction: Direction.horizontal,
                                          offset: - 0.9,
                                          child: Image.asset(services1)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 60.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      customTextHeading('House warming ceremony pooja',
                                          sizingInformation),


                                      sizingInformation.deviceScreenType ==
                                          DeviceScreenType.desktop
                                          ?
                                      ShowUpAnimation(
                                          delayStart: const Duration(seconds: 0),
                                          animationDuration: const Duration(seconds: 2),
                                          curve: Curves.easeInOutCubicEmphasized,
                                          direction: Direction.horizontal,
                                          offset:  0.9,
                                          child:  cText(
                                            '''' publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                                          ))
                                          : const SelectableText("")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        sizingInformation.deviceScreenType == DeviceScreenType.desktop
                            ? const SizedBox(
                          height: 30,
                        )
                            : const SizedBox(
                          height: 0,
                        ),
                        SizedBox(
                          width: 90.w,
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 60.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      customTextHeading(
                                          'Ganesh Pooja', sizingInformation),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      sizingInformation.deviceScreenType ==
                                          DeviceScreenType.desktop
                                          ? cText(
                                        ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                                      )
                                          : const SelectableText(""),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                    height: sizingInformation.deviceScreenType ==
                                        DeviceScreenType.desktop
                                        ? 15.w
                                        : 50.w,
                                    width: sizingInformation.deviceScreenType ==
                                        DeviceScreenType.desktop
                                        ? 25.w
                                        : 60.w,
                                    child: Stack(
                                      children: [
                                        Image.asset(services2),
                                        ShowUpAnimation(
                                            delayStart: const Duration(seconds: 0),
                                            animationDuration: const Duration(seconds: 3),
                                            curve: Curves.easeInOutCubicEmphasized,
                                            direction: Direction.horizontal,
                                            offset: -0.9,
                                            child: Image.asset(services2)),
                                      ],
                                    )),

                              ],
                            ),
                          ),
                        ),
                        sizingInformation.deviceScreenType == DeviceScreenType.desktop
                            ? const SizedBox(
                          height: 30,
                        )
                            : const SizedBox(
                          height: 0,
                        ),
                        SizedBox(
                          width: 90.w,
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: sizingInformation.deviceScreenType ==
                                        DeviceScreenType.desktop
                                        ? 15.w
                                        : 50.w,
                                    width: sizingInformation.deviceScreenType ==
                                        DeviceScreenType.desktop
                                        ? 25.w
                                        : 60.w,
                                    child: Stack(
                                      children: [
                                        Image.asset(services3),
                                        ShowUpAnimation(
                                            delayStart: const Duration(seconds: 0),
                                            animationDuration: const Duration(seconds: 3),
                                            curve: Curves.easeInOutCubicEmphasized,
                                            direction: Direction.horizontal,
                                            offset: 0.9,
                                            child: Image.asset(services3)),
                                      ],
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    customTextHeading(
                                        'Wedding Muhurtha', sizingInformation),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    sizingInformation.deviceScreenType ==
                                        DeviceScreenType.desktop
                                        ? cText(
                                      ''''publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking''',
                                    )
                                        : const SelectableText(""),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.go("/services");

                          },
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: footerColor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ))),
                          child:SelectableText("View More",
                              style: TextStyle(
                                  fontFamily: fontFamily,
                                  color: footerColor,
                                  fontSize: 13.sp)),
                        ),
                        sizingInformation.deviceScreenType == DeviceScreenType.desktop
                            ? const SizedBox(
                          height: 30,
                        )
                            : const SizedBox(
                          height: 10,
                        ),
                       SelectableText("Supplies",
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp)),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    height: 8.w,
                                    width: 8.w,
                                    child: Image.asset(sannayeMellamBand)),
                                const SizedBox(
                                  height: 20,
                                ),
                               SelectableText("Sannaye Mellam Band",
                                    style: TextStyle(
                                        fontFamily: fontFamily,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp)),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 8.w,
                                    width: 8.w,
                                    child: Image.asset(purohithulu)),
                                const SizedBox(
                                  height: 20,
                                ),
                               SelectableText("Purohithulu",
                                    style: TextStyle(
                                        fontFamily: fontFamily,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp)),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 8.w,
                                    width: 8.w,
                                    child: Image.asset(poojaSamagri)),
                                const SizedBox(
                                  height: 20,
                                ),
                               SelectableText("Pooja Samagri",
                                    style: TextStyle(
                                        fontFamily: fontFamily,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp)),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                    height: 8.w,
                                    width: 8.w,
                                    child: Image.asset(flowers)),
                                const SizedBox(
                                  height: 20,
                                ),
                               SelectableText("Flowers",
                                    style: TextStyle(
                                        fontFamily: fontFamily,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp)),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.go("/supplies");

                          },
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: footerColor,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ))),
                          child:SelectableText("View More",
                              style: TextStyle(
                                  fontFamily: fontFamily,
                                  color: footerColor,
                                  fontSize: 13.sp)),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Footer(
                  sizingInformation: sizingInformation,
                )
              ],
            ),
          ),
        );
      }
    );
  }
}






Widget customTextHeading(text1, sizingInformation) {
  return SizedBox(
    width: 60.w,
    child:SelectableText(
      text1,
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize:
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? text
                  : 20.sp,
          fontWeight: FontWeight.bold,
      ),
      maxLines: 4,
      // softWrap: true,
      // overflow: TextOverflow.clip,
    ),
  );
}
