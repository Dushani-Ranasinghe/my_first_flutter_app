
import 'package:flutter/material.dart';

class UserPageView extends StatelessWidget {
  final _controller= PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        MyPost1(),
        MyPost2(),
      ],

    );
  }
}

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(child: Text("Page 1", style: TextStyle(fontSize: 20, color: Colors.deepPurple[300]),)),
    );
  }
}
class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(child: Text("Page 2", style: TextStyle(fontSize: 20, color: Colors.pink[300]),)),
    );
  }
}