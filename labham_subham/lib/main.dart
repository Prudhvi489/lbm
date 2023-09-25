import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:labham_subham_web/containers/about_us_container.dart';
import 'package:labham_subham_web/containers/contact_us_container.dart';
import 'package:labham_subham_web/routes/home.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'containers/home_container.dart';
import 'containers/services_container.dart';
import 'containers/supplies_container.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const LabhamSubham());
 if(kIsWeb){
   setUrlStrategy(PathUrlStrategy());
 }


}

class LabhamSubham extends StatefulWidget {
  const LabhamSubham({Key? key}) : super(key: key);

  @override
  State<LabhamSubham> createState() => _LabhamSubhamState();
}

class _LabhamSubhamState extends State<LabhamSubham> {
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const HomeContainer()
      ),
      GoRoute(
          path: '/services&supplies',
          builder: (BuildContext context, GoRouterState state) =>  const ServicesConainer()
      ),
      // GoRoute(
      //     path: '/supplies',
      //     builder: (BuildContext context, GoRouterState state) => const SuppliesContainer()
      // ),
      GoRoute(
          path: '/aboutus',
          builder: (BuildContext context, GoRouterState state) => const AboutUs()
      ),
      GoRoute(
          path: '/contactus',
          builder: (BuildContext context, GoRouterState state) => ContactUsContainer()
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return  MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: "Labham Subham",
        debugShowCheckedModeBanner: false,
      );
    });
  }

}
