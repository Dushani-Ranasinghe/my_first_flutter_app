import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Application",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Header")),
        body: Center(
          child: Container(
            // padding: EdgeInsets.all(15),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow:[ BoxShadow( 
                color: Color.fromARGB(255, 209, 209, 209),
                offset: Offset(1.0,4.0),
                blurRadius: 15.0,
                spreadRadius: 7.0

              ),]
            ),
            child: Center(child: Text("This is a box", style: TextStyle(fontSize: 30),)),
          ),
        ));
  }
}
