import 'package:flutter/material.dart';

import 'user_pages/user_home.dart';
// import 'package:my_first_flutter_app/screens/insta_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Application",
      // theme: ThemeData(primarySwatch: Colors.blue),
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
  void increaseNum() {
    setState(() {
      number++;
    });
  }

  // bottom navigation bar
  int _selectedNavIndex = 0;

  void _setBottomNav(int index) {
    setState(() {
      _selectedNavIndex = index;
    });
  }

  //page lists
  final List<Widget> _pages = [
    UserHome(),
    Center(
      child: Text(
        "Message",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Account",
        style: TextStyle(fontSize: 40),
      ),
    ),
    Center(
      child: Text(
        "Setting",
        style: TextStyle(fontSize: 40),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Header"),
        backgroundColor: Colors.deepPurple[200],
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(children: [
            DrawerHeader(child: Center(child: Text("L O G O", style: TextStyle(fontSize: 25),))),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> UserHome())
                );
              }),
            )
          ]),
        ),
      ),
      body: _pages[_selectedNavIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedNavIndex,
          onTap: _setBottomNav,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings")
          ]),
    );
  }
}

 // InstaLayout(stories: _stories, posts: _posts),