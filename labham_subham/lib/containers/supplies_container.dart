import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labham_subham_web/utils/font_family.dart';
import 'package:labham_subham_web/utils/text_sizes.dart';
import 'package:labham_subham_web/widgets/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';
import '../utils/app_colors.dart';
import '../utils/image_paths.dart';
import '../utils/logo.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';

class SuppliesContainer extends StatefulWidget {
  const SuppliesContainer({Key? key}) : super(key: key);

  @override
  State<SuppliesContainer> createState() => _SuppliesContainerState();
}

class _SuppliesContainerState extends State<SuppliesContainer> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (cxt, sizingInformation) {
      return sizingInformation.deviceScreenType == DeviceScreenType.desktop
          ? desktop(sizingInformation,context)
          : mobile(sizingInformation);
    });
  }
}

Widget CRrow(imagePath, text1) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Image.asset(imagePath),
        ),
        SizedBox(
          width: 2.w,
        ),
        SizedBox(
          width: 80.w,
          child: Text(
            text1,
            style: TextStyle(fontFamily: fontFamily, fontSize: 13.sp),
            maxLines: 4,
            textAlign: TextAlign.justify,
            softWrap: true,
            overflow: TextOverflow.clip,
          ),
        )
      ],
    ),
  );



}

Widget Crow(string, text1) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        SizedBox(
          height: 80,
          width: 10.w,
          child: Image.asset(string),
        ),
        SizedBox(
          width: 2.w,
        ),
        SizedBox(
          width: 80.w,
          child: Text(
            text1,
            textAlign: TextAlign.justify,
            style: TextStyle(fontFamily: fontFamily, fontSize: text),
            maxLines: 4,
            softWrap: true,
            overflow: TextOverflow.clip,
          ),
        )
      ],
    ),
  );
}

Widget mobile(sizingInformation) {
  return Scaffold(
    appBar: mobileAppBar(),
    drawer: DrawerWidget(),
    body: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Text(
                'Supplies',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: heading,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ShowUpAnimation(
                delayStart: const Duration(seconds: 0),
                animationDuration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: - 0.9,
                child:    CRrow(durm,
                    'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'),),

            SizedBox(
              height: 2.w,
            ),
            ShowUpAnimation(
                delayStart: const Duration(milliseconds: 500),
                animationDuration: const Duration(milliseconds: 1500),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset:  0.9,
                child: CRrow(flower,
                    'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'), ),

            SizedBox(
              height: 2.w,
            ),
            ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1000),
                animationDuration: const Duration(milliseconds: 2000),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: - 0.9,
                child: CRrow(panthulu,
                    'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'), ),

            SizedBox(
              height: 2.w,
            ),
            ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1500),
                animationDuration: const Duration(milliseconds: 2500),
                curve: Curves.easeInOutCubicEmphasized,
                direction: Direction.horizontal,
                offset: 0.9,
                child:  CRrow(pooja,
                    'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'),),

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
    appBar: deskTopAppBar(context, sizingInformation,2),
    body: Container(
      height: MediaQuery.of(context).size.height*2,
      width:  MediaQuery.of(context).size.width,
      child:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(children: [
                /// Supplies text
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: Text(
                    'Supplies',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: heading,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                /// Supply one
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 0),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOutCubicEmphasized,
                  direction: Direction.horizontal,
                  offset: - 0.9,
                  child:   Crow(durm,
                      'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'),),
                SizedBox(
                  height: 2.w,
                ),
                /// Supply two
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 500),
                  animationDuration: const Duration(milliseconds: 1500),
                  curve:Curves.easeInOutCubicEmphasized,
                  direction: Direction.horizontal,
                  offset:  0.9,
                  child:  Crow(flower,
                      'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'),),
                SizedBox(
                  height: 2.w,
                ),
                /// Supply three
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1000),
                  animationDuration: const Duration(milliseconds: 2000),
                  curve: Curves.easeInOutCubicEmphasized,
                  direction: Direction.horizontal,
                  offset: - 0.9,
                  child: Crow(panthulu,
                      'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'),),
                SizedBox(
                  height: 2.w,
                ),
                /// Supply four
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1500),
                  animationDuration: const Duration(milliseconds: 2500),
                  curve: Curves.easeInOutCubicEmphasized,
                  direction: Direction.horizontal,
                  offset:  0.9,
                  child:  Crow(pooja,
                      'publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'),),

                const SizedBox(
                  height: 30,
                ),
              ],),
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
