import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/screens/insta_layout.dart';

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
  
  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4'];
  final List _stories = ['story1', 'story 2', 'story 3', 'story 4', 'story 5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Header")),
        body: Center(child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration( color: Colors.amber[400]),
              ),
        ),
            // InstaLayout(stories: _stories, posts: _posts),
        ));
  }
}
