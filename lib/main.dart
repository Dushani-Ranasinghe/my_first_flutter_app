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
        body: Column(mainAxisAlignment: MainAxisAlignment.start, 
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(
        height: 100,
         width: 100,
        color: Colors.blueGrey[900],
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.blueGrey[600],
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.blueGrey[300],
      ),
    ]));
  }
}
