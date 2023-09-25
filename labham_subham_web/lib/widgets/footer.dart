import 'package:flutter/material.dart';
import 'package:labham_subham_web/utils/font_family.dart';
import 'package:labham_subham_web/utils/logo.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_colors.dart';
import '../utils/logo.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.sizingInformation}) : super(key: key);
  final sizingInformation;
  @override
  Widget build(BuildContext context) {
    return sizingInformation.deviceScreenType == DeviceScreenType.mobile
        ? mobileFooter()
        : desktopFooter(sizingInformation);
  }
}

/// Mobile view
Widget mobileFooter() {
  return Container(
      height: 220,
      width: double.infinity,
      color: footerColor,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText("Address", style: TextStyle(color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        fontFamily: fontFamily),),
                    SelectableText(
                      " D.No: 4-53, Near Sai Baba Temple \nGopi Nagar Park, Kakinada.",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontFamily: fontFamily,
                          fontSize: 14.sp),)

                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText("Phone Number", style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: fontFamily,
                        fontSize: 14.sp),),
                    SelectableText("8106422333", style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: fontFamily,
                        fontSize: 14.sp),)

                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText("E-Mail", style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: fontFamily,
                        fontSize: 14.sp),),
                    SelectableText("labhamsubham.8@gmail.com", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: fontFamily,
                        fontSize: 14.sp),)

                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // padding:  sizingInformation.deviceScreenType == DeviceScreenType.desktop ?const EdgeInsets.symmetric(horizontal: 150): null,
                    child: FittedBox(child: Text(
                      "© Copyright 2022 LABHAM SUBHAM. All Rights Reserved.",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontFamily: fontFamily,
                          fontSize: 14.sp),))),
                SizedBox(height: 10,),

                /// Facebook, twitter,instagram
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     Container(
                //         height: 23,
                //         width: 23,
                //         child: Image.asset(facebook)),
                //     SizedBox(width: 10,),
                //     Container(height: 23,
                //         width: 23, child: Image.asset(twitter)),
                //     SizedBox(width: 10,),
                //     Container(height: 23,
                //         width: 23, child: Image.asset(instagram))
                //
                //   ],
                // )
              ],
            ),
          )
        ],
      )
  );
}


///  Desktop View
Widget desktopFooter(sizingInformation) {
  return Container(
    height: 160,
    width: double.infinity,
    color: footerColor,
    padding: const EdgeInsets.only(top: 20, bottom: 10),
    child: Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children:  [
                  SelectableText("Address",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.normal,fontFamily: fontFamily),),
                  SelectableText("D.No: 4-53, Near Sai Baba Temple \nGopi Nagar Park, Kakinada.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: fontFamily,fontSize: 14.sp),)


                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SelectableText("Phone Number",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: fontFamily,fontSize: 14.sp),),
                  SelectableText("8106422333",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: fontFamily,fontSize: 14.sp),)


                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SelectableText("E-Mail",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: fontFamily,fontSize: 14.sp),),
                  SelectableText("labhamsubham.8@gmail.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: fontFamily,fontSize: 14.sp),)
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 2,
            width: double.infinity,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Container(
            child: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding:  sizingInformation.deviceScreenType == DeviceScreenType.desktop ?const EdgeInsets.symmetric(horizontal: 150): null,
                      child: FittedBox(child:  Text("© Copyright 2022 LABHAM SUBHAM. All Rights Reserved.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: fontFamily,fontSize: 14.sp),))),

                  // Row(
                  //   children: [
                  //     SizedBox(
                  //         height: 23, width: 23, child: Image.asset(facebook)),
                  //     sizingInformation.deviceScreenType ==
                  //             DeviceScreenType.desktop
                  //         ? const SizedBox(
                  //             width: 10,
                  //           )
                  //         : const SizedBox(),
                  //     SizedBox(
                  //         height: 23, width: 23, child: Image.asset(twitter)),
                  //     sizingInformation.deviceScreenType ==
                  //             DeviceScreenType.desktop
                  //         ? const SizedBox(
                  //             width: 10,
                  //           )
                  //         : const SizedBox(),
                  //     SizedBox(
                  //         height: 23, width: 23, child: Image.asset(instagram))
                  //   ],
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
