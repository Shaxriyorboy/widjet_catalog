import 'package:flutter/material.dart';

class AnimationSlidePage extends StatefulWidget {
  const AnimationSlidePage({Key? key}) : super(key: key);
  static const String id = 'animation_slide_page';

  @override
  _AnimationSlidePageState createState() => _AnimationSlidePageState();
}

class _AnimationSlidePageState extends State<AnimationSlidePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<Offset>(
      begin: Offset(0.0, 4),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticIn),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _animation,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(size: 150.0,),
        ),
        ),
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
