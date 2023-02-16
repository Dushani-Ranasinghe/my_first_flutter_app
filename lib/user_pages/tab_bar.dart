import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("T A B  B A R")),
          elevation: 0,
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                  icon: Icon(
                Icons.home,
                color: Colors.blue,
              )),
              Tab(
                  icon: Icon(
                Icons.message,
                color: Colors.blue,
              )),
              Tab(
                  icon: Icon(
                Icons.person,
                color: Colors.blue,
              ))
            ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  color: Colors.blue[100],
                  child: Center(child: Text("Home", style: TextStyle(fontSize: 20),)),
                ),
                 Container(
                  color: Colors.blue[200],
                  child: Center(child: Text("Message", style: TextStyle(fontSize: 20),)),
                ),
                 Container(
                  color: Colors.blue[300],
                  child: Center(child: Text("Profile", style: TextStyle(fontSize: 20),)),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}