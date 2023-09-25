import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/app_colors.dart';
import '../utils/font_family.dart';
import '../utils/logo.dart';

/// Custom Text Button Widget.
Widget textButton(String text, onPressed, color) {
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
                  TextStyle(color: color, fontSize: 16, fontFamily: fontFamily),
            ),
          )));
}

///  AppBar Widget
AppBar deskTopAppBar(BuildContext context, sizingInformation, int val) {
  return AppBar(
    elevation: 5,
    backgroundColor: appBarBackgroundColor,
    leadingWidth: 300,
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
              height: 70,
              width: 100,
            ),
            SizedBox(
                // color:Colors.red,
                height: 70,
                width: 200,
                child: Image.asset(
                  labhamSubhamLogo,
                  fit: BoxFit.fitHeight,
                )),
          ],
        ),
      ),
    ),
    actions:  [
      textButton("Home", () {
        context.go("/");
      }, val == 0 ? footerColor : Colors.black),
      textButton("Services", () {
        context.go("/services");
      }, val == 1 ? footerColor : Colors.black),
      textButton("Supplies", () {
        context.go("/supplies");
      }, val == 2 ? footerColor : Colors.black),
      textButton("About Us", () {
        context.go("/aboutus");
      }, val == 3 ? footerColor : Colors.black),
      textButton("Contact Us", () {
        context.go("/contactus");
      }, val == 4 ? footerColor : Colors.black),
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



