import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:labham_subham_web/utils/font_family.dart';
import 'package:lottie/lottie.dart';

import '../utils/app_colors.dart';
import '../utils/logo.dart';

awesomeDialog(context,message,width){
  return AwesomeDialog(
    context: context,
    width: width,
    customHeader: Container(
      margin: const EdgeInsets.all(10),
      decoration:    BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow.shade50,
        image: const DecorationImage(image: AssetImage(labhamSubhamLogo) )
      ),
      child: OverflowBox(
          minHeight: width -100,
          maxHeight: width -100,child: Lottie.asset("assets/json/ram.json",fit: BoxFit.cover)),
    ),
    animType: AnimType.SCALE,
    dialogType: DialogType.INFO,
    body: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Center(child: Text(
        message,
        textAlign: TextAlign.center,
        style:const TextStyle(fontFamily: fontFamily),
      ),),
    ),
    title: 'This is Ignored',
    desc:   'This is also Ignored',
    btnOkOnPress: () {},
    btnOkColor: footerColor
  )..show();
}