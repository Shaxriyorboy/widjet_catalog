import 'package:flutter/material.dart';

class HingeClass extends StatefulWidget {
  final String child;

  const HingeClass({Key? key, required this.child}) : super(key: key);

  @override
  _HingeClassState createState() => _HingeClassState();
}

class _HingeClassState extends State<HingeClass>
    with SingleTickerProviderStateMixin {
  late Animation<double> _rotateAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));

    _rotateAnimation = Tween(begin: 0.0, end: 1.0 ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.5, curve: Curves.bounceInOut),
      ),
    );

    _slideAnimation = Tween(begin: 100.0, end: 600.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );

    _opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );

    _animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _animationController.repeat();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            _animationController.forward();
          },
        ),
        AnimatedBuilder(
          animation: _slideAnimation,
          builder: (ctx, ch) => Container(
            width: 220,
            height: 100,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.only(left: 75, top: _slideAnimation.value),
            child: RotationTransition(
              turns: _rotateAnimation,
              child: Center(
                child: Text(
                  widget.child,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 128, _opacityAnimation.value),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
