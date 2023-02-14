import 'package:flutter/material.dart';
// import 'package:my_first_flutter_app/screens/insta_layout.dart';

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
  // final List _posts = ['post 1', 'post 2', 'post 3', 'post 4'];
  // final List _stories = ['story1', 'story 2', 'story 3', 'story 4', 'story 5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Header")),
        body: GridView.builder(itemCount: 5,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1), itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          );
          
        }));
  }
}

 // InstaLayout(stories: _stories, posts: _posts),