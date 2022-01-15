import 'package:flutter/material.dart';
import 'package:widjet_catalog/pages/hinge_class.dart';

class HingeAnimation extends StatefulWidget {
  const HingeAnimation({Key? key}) : super(key: key);
  static const String id = 'hinge_animation';

  @override
  _HingeAnimationState createState() => _HingeAnimationState();
}

class _HingeAnimationState extends State<HingeAnimation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HingeClass(child: 'Animation'),
    );
  }
}
