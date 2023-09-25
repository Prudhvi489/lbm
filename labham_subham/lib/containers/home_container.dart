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
    return ResponsiveBuilder(builder: (cxt, sizingInformation) {
      return Scaffold(
        backgroundColor: backGroundColor,
        drawer: DrawerWidget(),
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? mobileAppBar()
            : deskTopAppBar(context, sizingInformation, 0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Carousel sliders
              Carousel(
                sizingInformation: sizingInformation,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? const EdgeInsets.symmetric(horizontal: 100)
                      : const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      /// ABout Us Heading Text
                      SelectableText("About Us",
                          style: TextStyle(
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: heading)),
                      const SizedBox(
                        height: 10,
                      ),
                      /// About Us description text
                      Container(
                        width: 80.w,
                        child: ShowUpAnimation(
                          delayStart: const Duration(seconds: 0),
                          animationDuration: const Duration(seconds: 2),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset: 0.9,
                          child: SelectableText(
                              "At Labham Subham, we have experience in providing Telugu Astrology services in Andhra Pradesh, India. We perform all types of Poojas, Homalu, Yagnalu, Vrathalu, Nomulu, etc, which helps our customers to have a bright and prosperous future. We also provide remedies for your Vasthu and Jathakam to have a smooth and seamless future. Labam Subham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: fontFamily,
                                  fontWeight: FontWeight.normal,
                                  fontSize: sizingInformation.deviceScreenType == DeviceScreenType.desktop ? text: 10)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      /// Abous Us Elevated Button
                      Container(
                        height: sizingInformation.deviceScreenType == DeviceScreenType.desktop? 3.w:20 ,
                        width:sizingInformation.deviceScreenType == DeviceScreenType.desktop? 10.w:80,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/aboutus');
                          },
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(backGroundColor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: footerColor,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ))),
                          child:  Text("View More",
                              style: TextStyle(
                                  fontFamily: fontFamily,
                                  color: footerColor,
                                  fontSize: sizingInformation.deviceScreenType == DeviceScreenType.desktop?text:8)),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      /// Services Heading Text
                      SelectableText("Services & Supplies",
                          style: TextStyle(
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.bold,
                              fontSize:  heading)),
                      sizingInformation.deviceScreenType ==
                              DeviceScreenType.desktop
                          ? const SizedBox(
                              height: 30,
                            )
                          : const SizedBox(
                              height: 20,
                            ),
                      /// First service Container
                      Container(
                        // height: 30.h,
                        // width: 90.w,
                        // color:Colors.yellow,
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // color:Colors.cyan,
                                height: sizingInformation.deviceScreenType ==
                                    DeviceScreenType.desktop
                                    ? 220
                                    : 200,
                                width: sizingInformation.deviceScreenType ==
                                    DeviceScreenType.desktop
                                    ? 300
                                    : 200,
                                child: Stack(
                                  children: [
                                    Container(
                                        height:sizingInformation.deviceScreenType ==
                                            DeviceScreenType.desktop
                                            ? 250 :150,
                                        width: sizingInformation.deviceScreenType ==
                                            DeviceScreenType.desktop?300:200,
                                        alignment: Alignment.topLeft,
                                        child: Image.asset(services1)),
                                    ShowUpAnimation(
                                        delayStart: const Duration(seconds: 0),
                                        animationDuration:
                                            const Duration(seconds: 3),
                                        curve: Curves.easeInOutCubicEmphasized,
                                        direction: Direction.horizontal,
                                        offset: -0.9,
                                        child: Container(
                                            height:sizingInformation.deviceScreenType ==
                                                DeviceScreenType.desktop
                                                ? 250 :150,
                                            width: sizingInformation.deviceScreenType ==
                                                DeviceScreenType.desktop?300:200,
                                            alignment: Alignment.topLeft,
                                            child: Image.asset(services1))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),

                                /// Service 1 Heading and sub text
                                Container(
                                  width: 60.w,
                                  // color:Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      customTextHeading(
                                          'House warming ceremony pooja',
                                          sizingInformation),
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
                                      Container(
                                        child: SingleChildScrollView(
                                          child: ShowUpAnimation(
                                              delayStart:
                                                  const Duration(seconds: 0),
                                              animationDuration:
                                                  const Duration(seconds: 2),
                                              curve:
                                                  Curves.easeInOutCubicEmphasized,
                                              direction: Direction.horizontal,
                                              offset: 0.9,
                                              child: cText(sizingInformation
                                                          .deviceScreenType ==
                                                      DeviceScreenType.desktop
                                                  ?  '''Before moving into a new home, gruhapravesha is conducted to expel negative influences and doshas and to accelerate the growth of positive energy. Griha Pravesh is performed to protect the home from common disasters and to bring harmony and prosperity to the residents of the house. It is carried out by performing several havans such as the ganesh havan, navagraha, vastu, and varun havan as well as performing dwar puja, bubbling milk, Gauri-ganesh, kalash, navgraha, and vastu puja.'''
                                                  : '''Before moving into a new home, gruhapravesha is conducted to expel negative influences and doshas and to accelerate the growth of positive energy. Griha Pravesh is performed to protect the home from common disasters and to bring harmony and prosperity to the residents of the house. It is carried out by performing several havans such as the ganesh havan, navagraha, vastu, and varun havan as well as performing dwar puja, bubbling milk, Gauri-ganesh, kalash, navgraha, and vastu puja.''')),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        sizingInformation.deviceScreenType ==
                                DeviceScreenType.desktop
                            ? const SizedBox(
                                height: 0,
                              )
                            : const SizedBox(
                                height: 0,
                              ),
                        /// Second Service Container
                        Container(
                          // color:Colors.yellow,
                          // width: 90.w,
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  // width: 60.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      customTextHeading(
                                          'Ganesh Pooja', sizingInformation),
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
                                      cText(
                                        sizingInformation.deviceScreenType ==
                                                DeviceScreenType.desktop
                                            ? ''''The Hindu Elephant-Headed God is known as Lord Ganesh (Chief of the Ganas), Vighnaharta (remover of barriers), and other names. According to Hindu mythology, Lord Ganesha must be worshipped as part of any puja rite to be considered complete. It is traditional to pray to Lord Ganesh for success and prosperity before beginning any auspicious endeavour. By performing this pooja, we can enjoy several benefits, including the removal of all barriers and challenges from our lives and assistance in achieving success in all of our activities. This puja bestows upon you wisdom, success, and prosperity. Additionally, Ganesha Puja bestows upon you great health.'''
                                            : ''''The Hindu Elephant-Headed God is known as Lord Ganesh (Chief of the Ganas), Vighnaharta (remover of barriers), and other names. According to Hindu mythology, Lord Ganesha must be worshipped as part of any puja rite to be considered complete. It is traditional to pray to Lord Ganesh for success and prosperity before beginning any auspicious endeavour. By performing this pooja, we can enjoy several benefits, including the removal of all barriers and challenges from our lives and assistance in achieving success in all of our activities. This puja bestows upon you wisdom, success, and prosperity. Additionally, Ganesha Puja bestows upon you great health.'''
                                       )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                SizedBox(
                                    height: sizingInformation.deviceScreenType ==
                                        DeviceScreenType.desktop
                                        ? 220
                                        : 200,
                                    width: sizingInformation.deviceScreenType ==
                                        DeviceScreenType.desktop
                                        ? 300
                                        : 200,
                                    child: Stack(
                                      children: [
                                        Container(
                                            height:sizingInformation.deviceScreenType ==
                                                DeviceScreenType.desktop
                                                ? 250 :150,
                                            width: sizingInformation.deviceScreenType ==
                                                DeviceScreenType.desktop?300:200,
                                            alignment: Alignment.topLeft,
                                            child: Image.asset(services2)),
                                        ShowUpAnimation(
                                            delayStart:
                                                const Duration(seconds: 0),
                                            animationDuration:
                                                const Duration(seconds: 3),
                                            curve:
                                                Curves.easeInOutCubicEmphasized,
                                            direction: Direction.horizontal,
                                            offset: -0.9,
                                            child: Container(
                                                height:sizingInformation.deviceScreenType ==
                                                    DeviceScreenType.desktop
                                                    ? 250 :150,
                                                width: sizingInformation.deviceScreenType ==
                                                    DeviceScreenType.desktop?300:200,
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(services2))),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        sizingInformation.deviceScreenType ==
                                DeviceScreenType.desktop
                            ? const SizedBox(
                                height: 30,
                              )
                            : const SizedBox(
                                height: 20,
                              ),
                        /// Third Service Container
                        SizedBox(
                          // width: 90.w,
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: sizingInformation.deviceScreenType ==
                                            DeviceScreenType.desktop
                                        ? 220
                                        : 200,
                                    width: sizingInformation.deviceScreenType ==
                                            DeviceScreenType.desktop
                                        ? 300
                                        : 200,
                                    // color:Colors.yellow,
                                    padding: EdgeInsets.only(top:0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height:sizingInformation.deviceScreenType ==
                                              DeviceScreenType.desktop
                                              ? 250 :150,
                                            width: sizingInformation.deviceScreenType ==
                                                DeviceScreenType.desktop?300:200,
                                            alignment: Alignment.topLeft,
                                            child: Image.asset(services3)),
                                        ShowUpAnimation(
                                            delayStart:
                                                const Duration(seconds: 0),
                                            animationDuration:
                                                const Duration(seconds: 3),
                                            curve:
                                                Curves.easeInOutCubicEmphasized,
                                            direction: Direction.horizontal,
                                            offset: 0.9,
                                            child: Container(
                                                height:sizingInformation.deviceScreenType ==
                                                    DeviceScreenType.desktop
                                                    ? 250 :150,
                                                width: sizingInformation.deviceScreenType ==
                                                    DeviceScreenType.desktop?300:200,
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(services3))),
                                      ],
                                    )),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customTextHeading(
                                        ' Wedding Muhurtham & Muhurtha\'s for all', sizingInformation),
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
                                    cText(
                                      sizingInformation.deviceScreenType ==
                                          DeviceScreenType.desktop
                                      ? '''There are still a few traditions in place that help to make the union of the bride and groom even more meaningful. Whether or whether the pair had a first glance, they will meet in person for the first time during the Muhurtham. An attractive and colourful cloth called as an antarpat divides the bride's position from where the groom sits on the Mandap. This lucky cloth is used to represent the bride and groom's separate lives before to marriage. The bride will not be able to gaze into her groom's eyes at the time of her arrival until she is seated next to him and the ceremony is through.'''
                                      : '''There are still a few traditions in place that help to make the union of the bride and groom even more meaningful. Whether or whether the pair had a first glance, they will meet in person for the first time during the Muhurtham. An attractive and colourful cloth called as an antarpat divides the bride's position from where the groom sits on the Mandap. This lucky cloth is used to represent the bride and groom's separate lives before to marriage. The bride will not be able to gaze into her groom's eyes at the time of her arrival until she is seated next to him and the ceremony is through.'''
                                     )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        /// Services View More button
                        // Container(
                        //   height: 2.w,
                        //   width: 8.w,
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       context.go("/services");
                        //     },
                        //     style: ButtonStyle(
                        //         elevation: MaterialStateProperty.all(0),
                        //         backgroundColor:
                        //             MaterialStateProperty.all(Colors.white),
                        //         shape: MaterialStateProperty.all(
                        //             RoundedRectangleBorder(
                        //           side: const BorderSide(
                        //             color: footerColor,
                        //           ),
                        //           borderRadius: BorderRadius.circular(5),
                        //         ))),
                        //     child:  Text("View More",
                        //         style: TextStyle(
                        //             fontFamily: fontFamily,
                        //             color: footerColor,
                        //             fontSize: text)),
                        //   ),
                        // ),
                        // sizingInformation.deviceScreenType ==
                        //         DeviceScreenType.desktop
                        //     ? const SizedBox(
                        //         height: 30,
                        //       )
                        //     : const SizedBox(
                        //         height: 10,
                        //       ),

                        const SizedBox(
                          height: 30,
                        ),
                        /// Supplies images and their text row
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
                                    height: 7.w,
                                    width: 7.w,
                                    child: Image.asset(flowers)),
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
                        /// Supplies view More Elevated Button
                        Container(
                          height: sizingInformation.deviceScreenType == DeviceScreenType.desktop? 3.w:20 ,
                          width:sizingInformation.deviceScreenType == DeviceScreenType.desktop? 10.w:80,
                          child: ElevatedButton(
                            onPressed: () {
                              context.go("/services&supplies");
                            },
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(backGroundColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: footerColor,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ))),
                            child:  Text("View More",
                                style: TextStyle(
                                    fontFamily: fontFamily,
                                    color: footerColor,
                                    fontSize:  sizingInformation.deviceScreenType == DeviceScreenType.desktop?text:8)),
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                /// Footer
                Footer(
                  sizingInformation: sizingInformation,
                )
              ],
            ),
          ),
      );
    });
  }
}

Widget customTextHeading(text1, sizingInformation) {
  return Container(
    // color:Colors.green,
    width: 60.w,
    child: SelectableText(
      text1,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? subheading
            :  15,
        fontWeight: FontWeight.bold,
      ),
      // maxLines: 4,
      // softWrap: true,
      // overflow: TextOverflow.clip,
    ),
  );
}
