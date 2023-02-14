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
        // appBar: AppBar(title: Text("Header")),
        body: Column(children: [
      Expanded(
        child: Container(
          color: Colors.blue,
          child: Center(
              child: Text(
            "First Column",
            style: TextStyle(fontSize: 20),
          )),
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.pink,
          child: Center(
              child: Text(
            "Second Column",
            style: TextStyle(fontSize: 20),
          )),
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.green,
          child: Center(
              child: Text(
            "Third Column",
            style: TextStyle(fontSize: 20),
          )),
        ),
      ),
    ]));
  }
}
