import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // remove debug banner
        debugShowMaterialGrid: false,
        //this is home widget
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: Text("Header"),
            centerTitle: true,
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: Text("click"),
                ),
              ],
            ),
          ),
        ));
  }
}
