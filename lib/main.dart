import 'package:flutter/material.dart';

import 'components/post.dart';
import 'components/story.dart';

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
        body: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder( 
                itemCount: _stories.length,itemBuilder: ((context, index) {
                return Story(storyText: _stories[index],);
              }),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Expanded(
              child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index){
              return Post(postText: _posts[index]);
          }),
            ),
          ]
        ),);
  }
}


