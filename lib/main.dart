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
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Text('Flutter Header'),
          centerTitle: true,
        ),
        body: Center(
            child: Image.asset("assets/wallpaper.jpg")
        
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            child: Text("Click!"),
            onPressed: () => {}),
        backgroundColor: Color.fromARGB(255, 235, 238, 240),
      );
  }
}