// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Test(),
    ));

class Test extends StatelessWidget{
  const Test({Key? key}) : super(key: key);
  // Test({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Flutter Header'),
          centerTitle: true,
        ),
        body: Center(
            child: Text(
          "Flutter body",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Color.fromARGB(255, 49, 49, 49),),
        )),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlue[900],
            child: Text("Click!"),
            onPressed: () => {}),
        backgroundColor: Colors.lightBlue[50],
      );
  }
}