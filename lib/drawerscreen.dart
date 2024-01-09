import 'package:azkar/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'menuscreen.dart';
class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: Home(),
      showShadow: true,
      menuBackgroundColor: Color(0xff34585c),
      mainScreenTapClose: true,
      menuScreenTapClose: true,

    );
  }
}
