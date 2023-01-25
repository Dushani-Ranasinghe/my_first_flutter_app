// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Hey Flutter'),
          centerTitle: true,
        ),
        body: Center(child: Text("This is body")),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue[900],
          child: Text("Click!"),
          onPressed: ()=>{}
        ),
        backgroundColor: Colors.lightBlue[50],
      ),
    ));
