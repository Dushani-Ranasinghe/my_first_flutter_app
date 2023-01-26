// ignore_for_file: prefer_const_constructors
// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Test(),
    ));

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);
  // Test({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Flutter Header'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10.0),
        color: Colors.grey[400],
        child: Text("Hello"),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          child: Text("Click!"),
          onPressed: () => {}),
      backgroundColor: Color.fromARGB(255, 235, 238, 240),
    );
  }
}
