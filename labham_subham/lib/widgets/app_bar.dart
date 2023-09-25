import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/app_colors.dart';
import '../utils/font_family.dart';
import '../utils/logo.dart';
import '../utils/text_sizes.dart';

/// Custom Text Button Widget.
Widget appBarTextButton(String text, onPressed, color, fontWeight) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: onPressed,
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: color == footerColor
                            ? footerColor
                            : Colors.transparent,
                        width: 1))),
            child: Text(
              text,
              style:
                  TextStyle(color: color, fontSize: appbarTextSize, fontFamily: fontFamily, fontWeight: fontWeight),
            ),
          )));
}

///  AppBar Widget
AppBar deskTopAppBar(BuildContext context, sizingInformation, int val) {
  return AppBar(
    elevation: 5,
    backgroundColor: appBarBackgroundColor,
    leadingWidth: 150,
    toolbarHeight: 60,
    shadowColor: appBarBackgroundColor,
    actionsIconTheme: const IconThemeData(color: appBarBackgroundColor),
    leading:   Container(
      // color:Colors.yellow,
      child: FittedBox(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              // height: 100,
              width: 50,
            ),
            SizedBox(
                // color:Colors.red,
                height: 70,
                width: 220,
                child: Image.asset(
                  labhamSubhamLogo,
                  fit: BoxFit.fitHeight,
                )),
          ],
        ),
      ),
    ),
    actions:  [
      appBarTextButton("Home", () {
        context.go("/");
      }, val == 0 ? footerColor : Colors.black, val == 0? FontWeight.bold : FontWeight.normal),
      appBarTextButton("Services & Supplies", () {
        context.go("/services&supplies");
      }, val == 1 ? footerColor : Colors.black,val == 1? FontWeight.bold : FontWeight.normal),
      // textButton("Supplies", () {
      //   context.go("/supplies");
      // }, val == 2 ? footerColor : Colors.black),
      appBarTextButton("About Us", () {
        context.go("/aboutus");
      }, val == 3 ? footerColor : Colors.black,val == 3? FontWeight.bold : FontWeight.normal),
      appBarTextButton("Contact Us", () {
        context.go("/contactus");
      }, val == 4 ? footerColor : Colors.black,val == 4? FontWeight.bold : FontWeight.normal),
     const  SizedBox(
        width: 50,
      )
    ],
  );
}

AppBar mobileAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.red.shade900),
    backgroundColor: appBarBackgroundColor,
    title: SizedBox(width: 100, child: Image.asset(labhamSubhamLogo)),
  );
}



