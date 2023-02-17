// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Application",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink[100],
      body: Center(
        child: UserStack(),
      ),
    );
  }
}

class UserStack extends StatelessWidget {
  const UserStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        //bottom
        Container(height: 300, width: 300, color: Colors.blue[100],),
        Container(height: 200, width: 200, color: Colors.pink[100],),
        //top
        Container(height: 100, width: 100, color: Colors.deepPurple[100],)
      ],
    );
  }
}