import 'package:flutter/material.dart';
import 'package:widjet_catalog/pages/animation_bounce.dart';
import 'package:widjet_catalog/pages/animation_pulse.dart';
import 'package:widjet_catalog/pages/animation_slid_page.dart';
import 'package:widjet_catalog/pages/animations_page.dart';
import 'package:widjet_catalog/pages/container_gradient.dart';
import 'package:widjet_catalog/pages/form_page.dart';
import 'package:widjet_catalog/pages/hinge_animation.dart';
import 'package:widjet_catalog/pages/home_page.dart';
import 'package:widjet_catalog/pages/input_page.dart';
import 'package:widjet_catalog/pages/navigation_rail_page.dart';
import 'package:widjet_catalog/pages/speed_dial_page.dart';
import 'package:widjet_catalog/pages/vazifa_3_task.dart';
import 'package:widjet_catalog/pages/vazifa_7_dars.dart';
import 'package:widjet_catalog/pages/vazifa_7_dars_2_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        ContainerGradient.id : (context)=>ContainerGradient(),
        FromPage.id: (context)=> FromPage(),
        InputPage.id:(context)=> InputPage(),
        NavigationRailPage.id:(context)=>NavigationRailPage(),
        SpeedDialPage.id:(context) => SpeedDialPage(),
        VazifaPage.id:(context) => VazifaPage(),
        Vazifa2TaskPage.id:(context) => Vazifa2TaskPage(),
        Vazifa3TaskPage.id:(context) => Vazifa3TaskPage(),
        AnimationsPage.id:(context)=> AnimationsPage(),
        AnimationPulse.id:(context) => AnimationPulse(),
        AnimationSlidePage.id:(context) => AnimationSlidePage(),
        AnimationBouncePage.id: (context)=>AnimationBouncePage(),
        HingeAnimation.id:(context) => HingeAnimation(),
      },
    );
  }
}

