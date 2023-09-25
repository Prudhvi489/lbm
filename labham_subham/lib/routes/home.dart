import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labham_subham_web/containers/services_container.dart';
import 'package:labham_subham_web/widgets/app_bar.dart';
import 'package:labham_subham_web/widgets/drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../containers/about_us_container.dart';
import '../containers/contact_us_container.dart';
import '../containers/home_container.dart';
import '../containers/services_container.dart';
import '../containers/supplies_container.dart';
import '../utils/app_colors.dart';
import '../utils/font_family.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ?  Drawer()
              : null,




      );
    });
  }
}

