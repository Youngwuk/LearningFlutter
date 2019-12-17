import 'package:flutter/material.dart';

class StateFullDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppleWidget(Colors.red),
      ),
    );
  }
}

class AppleWidget extends StatefulWidget {
  Color color;

  AppleWidget(this.color);

  @override
  _AppleWidgetState createState() => _AppleWidgetState();
}


class _AppleWidgetState extends State<AppleWidget> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animtion;
  Animation<int> sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(milliseconds: 2000), vsync: this);
    controller.addListener(() {  // 0 -> 1
      setState(() {

      });
      print('${controller.value}');
    });
    controller.addStatusListener((status){
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    animtion = ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
    sizeAnimation = IntTween(begin: 0, end: 100).animate(controller);

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'APPLE',
      style: TextStyle(color: animtion.value, fontSize: sizeAnimation.value.toDouble()),
    );
  }
}
