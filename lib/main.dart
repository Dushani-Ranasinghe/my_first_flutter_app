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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final List _posts = ['post 1', 'post 2', 'post 3', 'post 4'];

  //variable
  int number = 0;
  //method
  void increaseNum(){
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Header")),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Tapped $number times",
            style: TextStyle(fontSize: 20),
          ),
          GestureDetector(
            onTap: increaseNum,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Text(
                "Tap Here",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

 // InstaLayout(stories: _stories, posts: _posts),