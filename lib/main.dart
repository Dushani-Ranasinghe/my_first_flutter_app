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
          primarySwatch: Colors.blue,),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.pink[100],
            title: Text("Alert!"),
            content: Text("This is an alert."),
            actions: [
              MaterialButton(
                onPressed: (() {}),
                child: Text("OK"),
              ),
               MaterialButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child: Text("Cancel"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Click Here",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
