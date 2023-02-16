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
          textTheme: TextTheme(bodyText2: TextStyle(fontSize: 35))),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Text('Height: ${MediaQuery.of(context).size.height.toString()}'),
          Text('Width: ${MediaQuery.of(context).size.width.toString()}'),
          Text('Aspect ratio: ${MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)}'),
        ]),
      ),
    );
  }
}
