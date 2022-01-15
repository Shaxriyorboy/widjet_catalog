import 'package:flutter/material.dart';
import 'package:widjet_catalog/pages/animation_bounce.dart';
import 'package:widjet_catalog/pages/animation_pulse.dart';
import 'package:widjet_catalog/pages/animation_slid_page.dart';
import 'package:widjet_catalog/pages/animations_page.dart';
import 'package:widjet_catalog/pages/container_gradient.dart';
import 'package:widjet_catalog/pages/form_page.dart';
import 'package:widjet_catalog/pages/hinge_animation.dart';
import 'package:widjet_catalog/pages/input_page.dart';
import 'package:widjet_catalog/pages/navigation_rail_page.dart';
import 'package:widjet_catalog/pages/speed_dial_page.dart';
import 'package:widjet_catalog/pages/vazifa_3_task.dart';
import 'package:widjet_catalog/pages/vazifa_7_dars.dart';
import 'package:widjet_catalog/pages/vazifa_7_dars_2_task.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(ContainerGradient.id);
                    },
                    color: Colors.blue,
                    child: Text('Container Gradient page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(FromPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Form page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(InputPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Input page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(NavigationRailPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Navigation Rail page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SpeedDialPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Speed Dial page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(VazifaPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Vazifa page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Vazifa2TaskPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Vazifa 2-Task page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Vazifa3TaskPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Vazifa 3-Task page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AnimationsPage.id);
                    },
                    color: Colors.blue,
                    child: Text('Animations page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AnimationPulse.id);
                    },
                    color: Colors.blue,
                    child: Text('Animations Pluse page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AnimationSlidePage.id);
                    },
                    color: Colors.blue,
                    child: Text('Animations Slide page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AnimationBouncePage.id);
                    },
                    color: Colors.blue,
                    child: Text('Animations Bounce page'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 200,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(HingeAnimation.id);
                    },
                    color: Colors.blue,
                    child: Text('Animations Hinge page'),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
