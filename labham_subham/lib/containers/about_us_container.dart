import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labham_subham_web/utils/font_family.dart';
import 'package:labham_subham_web/utils/text_sizes.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../utils/app_colors.dart';
import '../utils/image_paths.dart';
import '../utils/logo.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/footer.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (cxt, sizingInformation) {
      return sizingInformation.deviceScreenType == DeviceScreenType.desktop
          ? desktop(sizingInformation, context)
          : mobile(sizingInformation);
    });
  }
}

Widget mobile(sizingInformation) {
  return Scaffold(
    appBar: mobileAppBar(),
    backgroundColor: backGroundColor,
    drawer: DrawerWidget(),
    body: SingleChildScrollView(
      child: Container(
        height: 100.h,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  /// About Us Text
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      'About Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: heading,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ///  Doing Pooja Image
                            ShowUpAnimation(
                              delayStart: const Duration(milliseconds: 00),
                              animationDuration:
                                  const Duration(milliseconds: 1000),
                              curve: Curves.easeInOutCubicEmphasized,
                              direction: Direction.horizontal,
                              offset: -0.9,
                              child: Container(
                                height: 250,
                                width: 300,
                                decoration: BoxDecoration(
                                    // color:Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(doingpooja),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            /// About Us first Paragraph
                            ShowUpAnimation(
                              delayStart: const Duration(milliseconds: 500),
                              animationDuration:
                                  const Duration(milliseconds: 1500),
                              curve: Curves.easeInOutCubicEmphasized,
                              direction: Direction.horizontal,
                              offset: 0.9,
                              child: SizedBox(
                                width: 100.w,
                                child: Text(
                                  "At Labham Subham, we have experience in providing Telugu Astrology services in Andhra Pradesh, India. We perform all types of Poojas, Homalu, Yagnalu, Vrathalu, Nomulu, etc, which helps our customers to have a bright and prosperous future. We also provide remedies for your Vasthu and Jathakam to have a smooth and seamless future. Labam Subham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.",
                                  maxLines: 7,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: fontFamily, fontSize: text),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            /// About Us Second Paragraph
                            ShowUpAnimation(
                              delayStart: const Duration(milliseconds: 1000),
                              animationDuration:
                                  const Duration(milliseconds: 2000),
                              curve: Curves.easeInOutCubicEmphasized,
                              direction: Direction.horizontal,
                              offset: -0.9,
                              child: SizedBox(
                                width: 100.w,
                                child: Text(
                                  ''' Labham Subham is majorly focused on fulfilling the spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology''',
                                  maxLines: 7,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: fontFamily, fontSize: text),
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // /// About Us Third ParaGraph
                            // ShowUpAnimation(
                            //   delayStart: const Duration(milliseconds: 1500),
                            //   animationDuration:
                            //       const Duration(milliseconds: 2500),
                            //   curve: Curves.easeInOutCubicEmphasized,
                            //   direction: Direction.horizontal,
                            //   offset: 0.9,
                            //   child: SizedBox(
                            //     width: 100.w,
                            //     child: Text(
                            //       ''' Labam Subham offers services like Vastu predictions, Jathaka predictions. We will provide Priest(Pandit / Purohithulu) for any types of Homalu, Vrathalu, Poojalu. We can also offer Pooja Samagri like Turmeric(Pasupu), Kumkuma, Fruits, Flowers, Homa Samagri, pooja items, etc''',
                            //       textAlign: TextAlign.justify,
                            //       style: TextStyle(
                            //           fontFamily: fontFamily, fontSize: text),
                            //       softWrap: true,
                            //       overflow: TextOverflow.clip,
                            //     ),
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // ShowUpAnimation(
                            //   delayStart: const Duration(milliseconds: 2000),
                            //   animationDuration: const Duration(milliseconds: 3000),
                            //   curve: Curves.easeInOutCubicEmphasized,
                            //   direction: Direction.horizontal,
                            //   offset: -0.9,
                            //   child: SizedBox(
                            //     width: 100.w,
                            //     child: Text(
                            //       '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure ''',
                            //       maxLines: 7,
                            //       textAlign: TextAlign.justify,
                            //       style: TextStyle(
                            //           fontFamily: fontFamily, fontSize: text),
                            //       softWrap: true,
                            //       overflow: TextOverflow.clip,
                            //     ),
                            //   ),
                            // ),

                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Expanded(child: Container(),),
            Footer(
              sizingInformation: sizingInformation,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget desktop(sizingInformation, BuildContext context) {
  final h =  MediaQuery.of(context).size.height;
  return Scaffold(
    appBar: deskTopAppBar(context, sizingInformation, 3),
    body: h > 600
        ? Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: backGroundColor,
            child: desktopBody1(sizingInformation, context))
        : Container( height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: backGroundColor,child: SingleChildScrollView(child: desktopBody2(sizingInformation, context))),
  );
}

Widget desktopBody1(
  sizingInformation,
  context,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      /// Text and Image Part
      Container(
        // padding: const EdgeInsets.only(left: 50,right: 50),
        child: Column(
          children: [
            /// About Us  Heading Text
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 50),
              child: Text(
                'About Us',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: heading,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              //   color: Colors.pink,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        /// About Us first para content
                        ShowUpAnimation(
                          delayStart: const Duration(seconds: 0),
                          animationDuration:
                              const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset: -0.9,
                          child: Container(
                            // color: Colors.red,
                            width: 50.w,
                            child: Text(
                              "At Labham Subham, we have experience in providing Telugu Astrology services in Andhra Pradesh, India. We perform all types of Poojas, Homalu, Yagnalu, Vrathalu, Nomulu, etc, which helps our customers to have a bright and prosperous future. We also provide remedies for your Vasthu and Jathakam to have a smooth and seamless future. Labam Subham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.",
                              maxLines: 7,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: fontFamily, fontSize: text),
                              softWrap: true,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        /// About Us second para content
                        ShowUpAnimation(
                          delayStart: const Duration(milliseconds: 500),
                          animationDuration:
                              const Duration(milliseconds: 1500),
                          curve: Curves.easeInOutCubicEmphasized,
                          direction: Direction.horizontal,
                          offset: -0.9,
                          child: SizedBox(
                            // color: Colors.orange,
                            width: 50.w,
                            child: Text(
                              '''Labham Subham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.''',
                              maxLines: 7,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: fontFamily, fontSize: text),
                              softWrap: true,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // /// About Us Third para content
                        // ShowUpAnimation(
                        //   delayStart: const Duration(milliseconds: 1000),
                        //   animationDuration:
                        //   const Duration(milliseconds: 2000),
                        //   curve: Curves.easeInOutCubicEmphasized,
                        //   direction: Direction.horizontal,
                        //   offset: -0.9,
                        //   child: SizedBox(
                        //     width: 50.w,
                        //     child: Text(
                        //       '''Labam Subham offers services like Vastu predictions, Jathaka predictions. We will provide Priest(Pandit / Purohithulu) for any types of Homalu, Vrathalu, Poojalu. We can also offer Pooja Samagri like Turmeric(Pasupu), Kumkuma, Fruits, Flowers, Homa Samagri, pooja items, etc.''',
                        //       maxLines: 7,
                        //       textAlign: TextAlign.justify,
                        //       style: TextStyle(
                        //           fontFamily: fontFamily, fontSize: text),
                        //       softWrap: true,
                        //       overflow: TextOverflow.clip,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    /// Doing Pooja Image
                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1500),
                      animationDuration: const Duration(milliseconds: 2500),
                      curve: Curves.easeInOutCubicEmphasized,
                      direction: Direction.horizontal,
                      offset: 0.9,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 0.0,
                          bottom: 0,
                        ),
                        child: SizedBox(
                          height: 300,
                          width: 400,
                          child: Image.asset(doingpooja),
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            //           ShowUpAnimation(
//             delayStart: const Duration(milliseconds: 2000),
//             animationDuration: const Duration(milliseconds: 3000),
//             curve: Curves.easeInOutCubicEmphasized,
//             direction: Direction.horizontal,
//             offset: -0.9,
//             child: SizedBox(
//               width: 80.w,
//               child: Text(
//                 '''Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
// There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.''',
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(fontFamily: fontFamily, fontSize: text),
//                 maxLines: 7,
//                 softWrap: true,
//                 overflow: TextOverflow.clip,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
          ],
        ),
      ),

      /// Footer
      Footer(
        sizingInformation: sizingInformation,
      ),
    ],
  );
}

Widget desktopBody2(
    sizingInformation,
    context,
    ) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Text and Image Part
        Container(
          // padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(
            children: [
              /// About Us  Heading Text
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: Text(
                  'About Us',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: heading,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //   color: Colors.pink,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          /// About Us first para content
                          ShowUpAnimation(
                            delayStart: const Duration(seconds: 0),
                            animationDuration:
                            const Duration(milliseconds: 1000),
                            curve: Curves.easeInOutCubicEmphasized,
                            direction: Direction.horizontal,
                            offset: -0.9,
                            child: Container(
                              // color: Colors.red,
                              width: 50.w,
                              child: Text(
                                "At Labham Subham, we have experience in providing Telugu Astrology services in Andhra Pradesh, India. We perform all types of Poojas, Homalu, Yagnalu, Vrathalu, Nomulu, etc, which helps our customers to have a bright and prosperous future. We also provide remedies for your Vasthu and Jathakam to have a smooth and seamless future. Labam Subham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.",
                                maxLines: 7,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: fontFamily, fontSize: text),
                                softWrap: true,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          /// About Us second para content
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 500),
                            animationDuration:
                            const Duration(milliseconds: 1500),
                            curve: Curves.easeInOutCubicEmphasized,
                            direction: Direction.horizontal,
                            offset: -0.9,
                            child: SizedBox(
                              // color: Colors.orange,
                              width: 50.w,
                              child: Text(
                                '''Labham Subham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.''',
                                maxLines: 7,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: fontFamily, fontSize: text),
                                softWrap: true,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          /// About Us Third para content
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1000),
                            animationDuration:
                            const Duration(milliseconds: 2000),
                            curve: Curves.easeInOutCubicEmphasized,
                            direction: Direction.horizontal,
                            offset: -0.9,
                            child: SizedBox(
                              width: 50.w,
                              child: Text(
                                '''Labam Subham offers services like Vastu predictions, Jathaka predictions. We will provide Priest(Pandit / Purohithulu) for any types of Homalu, Vrathalu, Poojalu. We can also offer Pooja Samagri like Turmeric(Pasupu), Kumkuma, Fruits, Flowers, Homa Samagri, pooja items, etc.''',
                                maxLines: 7,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: fontFamily, fontSize: text),
                                softWrap: true,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      /// Doing Pooja Image
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1500),
                        animationDuration: const Duration(milliseconds: 2500),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 0.0,
                            bottom: 0,
                          ),
                          child: SizedBox(
                            height: 300,
                            width: 400,
                            child: Image.asset(doingpooja),
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              //           ShowUpAnimation(
//             delayStart: const Duration(milliseconds: 2000),
//             animationDuration: const Duration(milliseconds: 3000),
//             curve: Curves.easeInOutCubicEmphasized,
//             direction: Direction.horizontal,
//             offset: -0.9,
//             child: SizedBox(
//               width: 80.w,
//               child: Text(
//                 '''Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
// There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.''',
//                 textAlign: TextAlign.justify,
//                 style: TextStyle(fontFamily: fontFamily, fontSize: text),
//                 maxLines: 7,
//                 softWrap: true,
//                 overflow: TextOverflow.clip,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
            ],
          ),
        ),

        /// Footer
        Footer(
          sizingInformation: sizingInformation,
        ),
      ],
    ),
  );
}
