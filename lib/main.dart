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
            child: Image(image: NetworkImage("https://images.unsplash.com/photo-1536859975388-b5e6623e9223?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),)
        
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            child: Text("Click!"),
            onPressed: () => {}),
        backgroundColor: Color.fromARGB(255, 235, 238, 240),
      );
  }
}