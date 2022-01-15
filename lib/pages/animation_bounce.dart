import 'package:flutter/material.dart';
class AnimationBouncePage extends StatefulWidget {
  const AnimationBouncePage({Key? key}) : super(key: key);
  static const String id = 'animation_bounce_page';

  @override
  _AnimationBouncePageState createState() => _AnimationBouncePageState();
}

class _AnimationBouncePageState extends State<AnimationBouncePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    _animation = Tween(begin: 300.0, end: 200.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 1.0, curve: Curves.elasticIn),
      ),
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.repeat(reverse: true);
        }
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        builder: (ctx,ch) => Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(top: _animation.value,left: 150),
          child: Image.asset('assets/images/football.png'),
        ),
        animation: _animation,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         _controller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
