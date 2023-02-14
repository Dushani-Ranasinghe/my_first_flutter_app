import 'package:flutter/material.dart';

class Post extends StatelessWidget {

// pass parameter
final String postText;
// create constructor for parameter
Post({required this.postText}); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          color: Colors.blue[200],
        ),
        child: Center(child: Text(postText,style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}