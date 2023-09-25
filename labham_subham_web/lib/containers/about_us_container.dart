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
    drawer: DrawerWidget(),
    body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
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
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 00),
                        animationDuration: const Duration(milliseconds: 1000),
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
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 500),
                        animationDuration: const Duration(milliseconds: 1500),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: SizedBox(
                          width: 100.w,
                          child: Text(
                            ''' At LabamSubham,we have experience in providing Telugu Astrology services in Andhra Pradesh, India.We perform all types of Pooja, Homalu, Yagnalu, Vrathalu, Nomulu, etc, which helps our users to have a bright and prosperous future. We also provide remedies for your Vasthu and Jathakam to have a smooth and seamless future''',
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
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1000),
                        animationDuration: const Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: SizedBox(
                          width: 100.w,
                          child: Text(
                            ''' LabamSubham is majorly focused on fulfilling the spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology''',
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
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1500),
                        animationDuration: const Duration(milliseconds: 2500),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: SizedBox(
                          width: 100.w,
                          child: Text(
                            ''' Labam Subham offers services like Vastu predictions, Jathaka predictions. We will provide Priest(Pandit / Purohit Hulu) for any types of Homalu, Vrathalu, Poojalu. We can also offer Pooja Samagri like Turmeric(Pasupu), Kumkuma, Fruits, Flowers, Homa Samagri, pooja items, etc''',
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
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 2000),
                        animationDuration: const Duration(milliseconds: 3000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: SizedBox(
                          width: 100.w,
                          child: Text(
                            '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure ''',
                            maxLines: 7,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontFamily: fontFamily, fontSize: text),
                            softWrap: true,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 2500),
                        animationDuration: const Duration(milliseconds: 3500),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: 0.9,
                        child: SizedBox(
                          width: 100.w,
                          child: Text(
                            '''Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
      There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.''',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontFamily: fontFamily, fontSize: text),
                            maxLines: 7,
                            softWrap: true,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ]),
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

Widget desktop(sizingInformation, BuildContext context) {
  return Scaffold(
    appBar: deskTopAppBar(context, sizingInformation, 3),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 50),
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ShowUpAnimation(
                        delayStart: const Duration(seconds: 0),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: Container(
                          // color: Colors.red,
                          width: 50.w,
                          child: Text(
                            '''At LabamSubham,we have experience in providing Telugu Astrology services in Andhra Pradesh, India. We perform all types of Pooja, Homalu, Yagnalu, Vrathalu, Nomulu, etc, which helps our users to have bright and prosperous future. We also provide remedies for your Vasthu and Jathakam to have a smooth and seamless future.''',
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
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 500),
                        animationDuration: const Duration(milliseconds: 1500),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: SizedBox(
                          // color: Colors.orange,
                          width: 50.w,
                          child: Text(
                            '''LabamSubham is majorly focused on fulfilling spiritual belief of people looking for their bright and happy future. So we are here to take every step needed to fulfill your wishes, offering a better solution for your bright future based on your Horoscope, Astrology and Numerology.''',
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
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1000),
                        animationDuration: const Duration(milliseconds: 2000),
                        curve: Curves.easeInOutCubicEmphasized,
                        direction: Direction.horizontal,
                        offset: -0.9,
                        child: SizedBox(
                          width: 50.w,
                          child: Text(
                            '''Labam Subham offers services like Vastu predictions, Jathaka predictions. We will provide Priest(Pandit / Purohit Hulu) for any types of Homalu, Vrathalu, Poojalu. We can also offer Pooja Samagri like Turmeric(Pasupu), Kumkuma, Fruits, Flowers, Homa Samagri, pooja items, etc.''',
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
          ShowUpAnimation(
            delayStart: const Duration(milliseconds: 2000),
            animationDuration: const Duration(milliseconds: 3000),
            curve: Curves.easeInOutCubicEmphasized,
            direction: Direction.horizontal,
            offset: -0.9,
            child: SizedBox(
              width: 80.w,
              child: Text(
                '''Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: fontFamily, fontSize: text),
                maxLines: 7,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
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
  );
}
