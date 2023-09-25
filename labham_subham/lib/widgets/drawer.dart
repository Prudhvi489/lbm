import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/app_colors.dart';
import '../utils/logo.dart';



class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: appBarBackgroundColor,
            ),
            child: Container( height: 100, width: 100,child: Image.asset(labhamSubhamLogo,fit: BoxFit.fill,)),//BoxDecoration
          ),
          Column(
            children: [
              ListTile(
                // leading: const Icon(Icons.person),
                title: const Text(' Home '),
                onTap: () {
                  context.go('/');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                // leading: const Icon(Icons.book),
                title: const Text(' Services & Supplies '),
                onTap: () {
                  context.go('/services&supplies');
                  Navigator.pop(context);
                },
              ),
              // ListTile(
              //   // leading: const Icon(Icons.workspace_premium),
              //   title: const Text(' Supplies '),
              //   onTap: () {
              //     context.go('/supplies');
              //     Navigator.pop(context);
              //   },
              // ),
              ListTile(
                // leading: const Icon(Icons.video_label),
                title: const Text(' About Us '),
                onTap: () {
                  context.go('/aboutus');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                // leading: const Icon(Icons.edit),
                title: const Text(' Contact Us'),
                onTap: () {
                  context.go('/contactus');
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

