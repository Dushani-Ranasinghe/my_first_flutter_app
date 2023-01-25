// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           
          title: Text('Hey Flutter'),
          centerTitle: true,
        ),
        body: Center(child: Text("This is body")),
        floatingActionButton: FloatingActionButton(
          child: Text("Click!"),
          onPressed: ()=>{}
        ),
        backgroundColor: Colors.lightBlue[50],
      ),
    ));
