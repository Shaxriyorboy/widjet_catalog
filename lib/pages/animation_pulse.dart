import 'package:flutter/material.dart';

class AnimationPulse extends StatefulWidget {
  const AnimationPulse({Key? key}) : super(key: key);
  static const String id = 'animation_pulse';

  @override
  _AnimationPulseState createState() => _AnimationPulseState();
}

class _AnimationPulseState extends State<AnimationPulse>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _animation = Tween<Size>(
      begin: Size(180, 180),
      end: Size(200, 200),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceIn),
    );

    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (ctx, ch) => Container(
            width: _animation.value.width,
            height: _animation.value.height,
            child: Image.asset('assets/images/heart.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
