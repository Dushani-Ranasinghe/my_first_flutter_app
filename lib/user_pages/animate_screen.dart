
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.pink;
  double boxX = 1;
  double boxY = 0;

  // void _expandBox() {
  //   setState(() {
  //     boxHeight = 200;
  //     boxWidth = 200;
  //   });
  // }
  // void _changeBoxColor() {
  //   setState(() {
  //     boxColor = Colors.deepPurple;
  //   });
  // }
  void _moveBox(){
    setState(() {
      boxX=0;
      boxY=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _moveBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment(boxX,boxY),
            child: Container(
              width: boxWidth,
              height: boxHeight,
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
