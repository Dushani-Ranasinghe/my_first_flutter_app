// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'user_pages/tab_bar.dart';
// import 'user_pages/user_sliver.dart';
// import 'user_pages/user_home.dart';
// import 'package:my_first_flutter_app/screens/insta_layout.dart';

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
      backgroundColor: Colors.pink[500],
      body: Column(
        children: [
          Center(
              child: RichText(
            text: TextSpan(style: TextStyle(fontSize: 15), children: [
              TextSpan(
                  text: "Hey ", style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      "gsudfgaie afgua asguisaugdfa asgdfaugsfa asugdfaiu sdgfwsiougfoig")
            ]),
          )),
        ],
      ),
    );
  }
}
